desc 'Run positive tests'
task :run_positive do
  sh'cucumber -t @positive'
end