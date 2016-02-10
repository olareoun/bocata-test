module ApplicationHelper
	def link_to_add_fields(name, f, association)
		new_object = f.object.send(association).klass.new
		id = new_object.object_id
		if f.object.send(association).klass == Menu
			4.times do |n|
				sales_line = new_object.sales_lines.build
			    case n
		          when 0 
		            sales_line.type = 'Sandwich'
		          when 1,2
		            sales_line.type = 'Ingredient'
		          when 3
		            sales_line.type = 'Drink'
		        end 
			end
		end

		if f.object.send(association).klass == SalesLine
 			new_object.type = 'Ingredient'
		end

		fields = f.fields_for(association, new_object, child_index: id) do |builder|
			render(association.to_s.singularize + "_fields", f: builder)
		end
		link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "") })			
	end

	def model_name(model)
		model.to_s.capitalize
	end
end