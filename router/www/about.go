package www

import ()

func AboutHandler(c *Context) error {
	c.Set("tmpl", "www/about")
	c.Set("data", map[string]interface{}{
		"title": "About",
	})

	return nil
}
