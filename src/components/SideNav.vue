<template>
<transition name="slide" mode="out-in">
    <div class="sideNav ">
        <ul>
            <li>
                <div class="chevron">
                    <button @click="onchevronHandler">
                        <svg v-if="onchevronClosed===false" class="m-auto" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M11 19l-7-7 7-7m8 14l-7-7 7-7" />
                        </svg>

                        <svg v-if="onchevronClosed" xmlns="http://www.w3.org/2000/svg" class="m-auto" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M13 5l7 7-7 7M5 5l7 7-7 7" />
                        </svg>

                    </button>
                </div>
            </li>

            <li>
                <a href="#">
                    <svg fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                        <path d="M2 10a8 8 0 018-8v8h8a8 8 0 11-16 0z"></path>
                        <path d="M12 2.252A8.014 8.014 0 0117.748 8H12V2.252z"></path>
                    </svg>
                    <span class="navSpan" :class=" {'navSpan-hidden':onchevronClosed }">Dashboard</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <svg fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                        <path d="M5 3a2 2 0 00-2 2v2a2 2 0 002 2h2a2 2 0 002-2V5a2 2 0 00-2-2H5zM5 11a2 2 0 00-2 2v2a2 2 0 002 2h2a2 2 0 002-2v-2a2 2 0 00-2-2H5zM11 5a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V5zM11 13a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z"></path>
                    </svg>
                    <span class="navSpan" :class=" {'navSpan-hidden':onchevronClosed }">Kanban</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <svg fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                        <path d="M8.707 7.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l2-2a1 1 0 00-1.414-1.414L11 7.586V3a1 1 0 10-2 0v4.586l-.293-.293z"></path>
                        <path d="M3 5a2 2 0 012-2h1a1 1 0 010 2H5v7h2l1 2h4l1-2h2V5h-1a1 1 0 110-2h1a2 2 0 012 2v10a2 2 0 01-2 2H5a2 2 0 01-2-2V5z"></path>
                    </svg>
                    <span class="navSpan" :class=" {'navSpan-hidden':onchevronClosed }">Inbox</span>

                </a>
            </li>
            <li>
                <a href="#">
                    <svg fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z" clip-rule="evenodd"></path>
                    </svg>
                    <span class="navSpan" :class=" {'navSpan-hidden':onchevronClosed }">Users</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <svg fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M10 2a4 4 0 00-4 4v1H5a1 1 0 00-.994.89l-1 9A1 1 0 004 18h12a1 1 0 00.994-1.11l-1-9A1 1 0 0015 7h-1V6a4 4 0 00-4-4zm2 5V6a2 2 0 10-4 0v1h4zm-6 3a1 1 0 112 0 1 1 0 01-2 0zm7-1a1 1 0 100 2 1 1 0 000-2z" clip-rule="evenodd"></path>
                    </svg>
                    <span class="navSpan" :class=" {'navSpan-hidden':onchevronClosed }">Products</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <svg fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M3 3a1 1 0 00-1 1v12a1 1 0 102 0V4a1 1 0 00-1-1zm10.293 9.293a1 1 0 001.414 1.414l3-3a1 1 0 000-1.414l-3-3a1 1 0 10-1.414 1.414L14.586 9H7a1 1 0 100 2h7.586l-1.293 1.293z" clip-rule="evenodd"></path>
                    </svg>
                    <span class="navSpan" :class=" {'navSpan-hidden':onchevronClosed }">Sign In</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <svg fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M5 4a3 3 0 00-3 3v6a3 3 0 003 3h10a3 3 0 003-3V7a3 3 0 00-3-3H5zm-1 9v-1h5v2H5a1 1 0 01-1-1zm7 1h4a1 1 0 001-1v-1h-5v2zm0-4h5V8h-5v2zM9 8H4v2h5V8z" clip-rule="evenodd"></path>
                    </svg>
                    <span class="navSpan" :class=" {'navSpan-hidden':onchevronClosed }">Sign Up</span>
                </a>
            </li>
        </ul>
    </div>
</transition>
</template>

<script>
import {
    ref
} from 'vue'

export default {
    setup() {
        const sideNav_width = ref("16rem");
        const onchevronClosed = ref(false);
        const onchevronHandler = () => {

            onchevronClosed.value = !onchevronClosed.value;
            if (!onchevronClosed.value)
                sideNav_width.value = "16rem";
            else if (onchevronClosed.value)
                sideNav_width.value = "5rem";

            console.log(onchevronClosed, ",", sideNav_width);
        }

        return {
            onchevronHandler,
            sideNav_width,
            onchevronClosed
        };
    }

}
</script>

<style lang="scss" scoped>
$sideNaveW: v-bind("sideNav_width");

.sideNav {
    font-family: "Roboto", "Helvetica", "Arial", sans-serif;
    @apply text-base h-full pt-6;
    width: $sideNaveW;
    background-color: #1c4159;

    transition: width 0.8s ease-out;

    svg {
        @apply flex-shrink-0 w-6 h-6 text-white transition duration-75;
    }

    .chevron {
        @apply relative p-1 w-full h-12;

        button {
            @apply absolute right-4 hover: bg-gray-100 hover:bg-opacity-20 w-12 h-12 rounded-full;
        }
    }

    ul {
        @apply space-y-2;

        a {

            @apply flex items-center pl-6 p-4 font-normal text-white;

            &:hover {
                @apply bg-gray-100 bg-opacity-20;
            }

            .navSpan {
                @apply flex-1 ml-3 whitespace-nowrap;
                opacity: 1;
                transition: opacity 2s;
            }

            .navSpan-hidden {
                @apply invisible;
                opacity: 0;
                transition: opacity 0.5s;
            }
        }

    }

}
</style>
