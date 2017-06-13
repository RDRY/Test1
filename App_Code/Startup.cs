using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Usuario.Startup))]
namespace Usuario
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
