import asyncio
from mcp_agent.core.fastagent import FastAgent

fast = FastAgent("fast-agent agent_one (mcp server)")


@fast.agent(
    name="agent_one",
    instruction="""
You have access to a Python 3.12 interpreter and you can use this to analyse
and process data. Common analysis packages such as Pandas, Seaborn and
Matplotlib are already installed. You can add further packages if needed.

Don't forget to import something before using it

Data files are accessible from the /mnt/data/ directory
(this is the current working directory).
Visualisations should be saved as .png files in the current working directory.
    """,
    servers=["pyrepl"]
)
async def main():
    async with fast.run() as agent:
        await agent.interactive()


if __name__ == "__main__":
    asyncio.run(main())
