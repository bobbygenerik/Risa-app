package com.google.firebase.concurrent;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.StrictMode;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import p158.C2537;
import p180.InterfaceC2749;
import p180.InterfaceC2750;
import p180.InterfaceC2751;
import p180.InterfaceC2752;
import p212.C2988;
import p212.C2989;
import p212.C2990;
import p212.C2994;
import p212.C2995;
import p221.ScheduledExecutorServiceC3044;
import p221.ThreadFactoryC3047;
import ﹳˋ.ٴﹶ;

@SuppressLint({"ThreadPoolCreation"})
/* loaded from: classes.dex */
public class ExecutorsRegistrar implements ComponentRegistrar {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C2990 f3090 = new C2990(new C2989(2));

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C2990 f3089 = new C2990(new C2989(3));

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C2990 f3087 = new C2990(new C2989(4));

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C2990 f3088 = new C2990(new C2989(5));

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static ScheduledExecutorServiceC3044 m2724() {
        StrictMode.ThreadPolicy.Builder detectNetwork = new StrictMode.ThreadPolicy.Builder().detectNetwork();
        int i = Build.VERSION.SDK_INT;
        detectNetwork.detectResourceMismatches();
        if (i >= 26) {
            detectNetwork.detectUnbufferedIo();
        }
        return new ScheduledExecutorServiceC3044(Executors.newFixedThreadPool(4, new ThreadFactoryC3047("Firebase Background", 10, detectNetwork.penaltyLog().build())), (ScheduledExecutorService) f3088.get());
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        C2988 c2988 = new C2988(InterfaceC2752.class, ScheduledExecutorService.class);
        C2988[] c2988Arr = {new C2988(InterfaceC2752.class, ExecutorService.class), new C2988(InterfaceC2752.class, Executor.class)};
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        hashSet.add(c2988);
        for (C2988 c29882 : c2988Arr) {
            ٴﹶ.ᵎﹶ(c29882, "Null interface");
        }
        Collections.addAll(hashSet, c2988Arr);
        C2994 c2994 = new C2994(null, new HashSet(hashSet), new HashSet(hashSet2), 0, 0, new C2537(22), hashSet3);
        C2988 c29883 = new C2988(InterfaceC2751.class, ScheduledExecutorService.class);
        C2988[] c2988Arr2 = {new C2988(InterfaceC2751.class, ExecutorService.class), new C2988(InterfaceC2751.class, Executor.class)};
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        HashSet hashSet6 = new HashSet();
        hashSet4.add(c29883);
        for (C2988 c29884 : c2988Arr2) {
            ٴﹶ.ᵎﹶ(c29884, "Null interface");
        }
        Collections.addAll(hashSet4, c2988Arr2);
        C2994 c29942 = new C2994(null, new HashSet(hashSet4), new HashSet(hashSet5), 0, 0, new C2537(23), hashSet6);
        C2988 c29885 = new C2988(InterfaceC2749.class, ScheduledExecutorService.class);
        C2988[] c2988Arr3 = {new C2988(InterfaceC2749.class, ExecutorService.class), new C2988(InterfaceC2749.class, Executor.class)};
        HashSet hashSet7 = new HashSet();
        HashSet hashSet8 = new HashSet();
        HashSet hashSet9 = new HashSet();
        hashSet7.add(c29885);
        for (C2988 c29886 : c2988Arr3) {
            ٴﹶ.ᵎﹶ(c29886, "Null interface");
        }
        Collections.addAll(hashSet7, c2988Arr3);
        C2994 c29943 = new C2994(null, new HashSet(hashSet7), new HashSet(hashSet8), 0, 0, new C2537(24), hashSet9);
        C2995 m6521 = C2994.m6521(new C2988(InterfaceC2750.class, Executor.class));
        m6521.f11428 = new C2537(25);
        return Arrays.asList(c2994, c29942, c29943, m6521.m6524());
    }
}
