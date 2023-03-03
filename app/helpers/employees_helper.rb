module EmployeesHelper
  def manager_name(id)
    case id
    when nil
      '-'
    else
      Employee.find(id).fullname
    end
  end
end
