package hibernate;

import java.io.Serializable;
import java.util.Date;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.EqualsBuilder;

/**
 * 
 * @author jfish
 * @hibernate.class table="person"
 */
public class Person implements Serializable {

	private static final long serialVersionUID = 1044237873392048222L;

	private Long id;

	private String name;

	private Date createTime;

	/**
	 * @return Returns the createTime.
	 * @hibernate.property column = "ts"
	 */
	public Date getCreateTime() {
		return createTime;
	}

	/**
	 * @param createTime
	 *            The createTime to set.
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	/**
	 * @return Returns the id.
	 * @hibernate.id column = "person_id" generator-class = "native"
	 *               unsaved-value = "not null"
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id
	 *            The id to set.
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return Returns the name.
	 * @hibernate.property
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            The name to set.
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @see java.lang.Object#toString()
	 */
	public String toString() {
		return new ToStringBuilder(this).append("name", this.name).append("id",
				this.id).append("createTime", this.createTime).toString();
	}

	/**
	 * @see java.lang.Object#hashCode()
	 */
	public int hashCode() {
		return new HashCodeBuilder(-96436153, 713792057).appendSuper(
				super.hashCode()).append(this.createTime).append(this.name)
				.append(this.id).toHashCode();
	}

	/**
	 * @see java.lang.Object#equals(Object)
	 */
	public boolean equals(Object object) {
		if (!(object instanceof Person)) {
			return false;
		}
		Person rhs = (Person) object;
		return new EqualsBuilder().appendSuper(super.equals(object)).append(
				this.createTime, rhs.createTime).append(this.name, rhs.name)
				.append(this.id, rhs.id).isEquals();
	}
}
