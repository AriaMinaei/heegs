module.exports = class BehavioursManager

	constructor: ->

		@behaviours = []

	add: (behaviour) ->

		b = new behaviour @

		@behaviours.push b

		return b

	remove: (behaviour) ->

		# TODO: use utila.array.pluckItem

		newBehaviours = []

		for b in @behaviours

			if b isnt behaviour then newBehaviours.push b

		@behaviours = newBehaviours

	get: ->

		return @behaviours
