task :default => :spec

desc "Ejecutar las espectativas de la clase Nutricion"
task :spec do
  sh "rspec -I. spec/nutricion_spec.rb"
end

desc "Ejecutar con documentacion"
task :doc do
  sh "rspec -I. spec/nutricion_spec.rb --format documentation"
end
