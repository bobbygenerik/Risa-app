package p009;

import android.os.Bundle;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import p255.C3368;
import p296.AbstractC3659;
import p366.C4486;
import p447.C5215;
import p447.C5241;
import p447.C5253;
import p447.C5298;
import p447.C5322;
import p447.C5339;
import p447.C5344;
import p447.C5351;
import p447.C5356;
import p447.RunnableC5213;
import ʽⁱ.ᵎﹶ;
import ʿי.ˎᐧ;

/* renamed from: ʻי.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0841 extends AbstractC0839 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C5253 f3580;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C5322 f3581;

    public C0841(C5322 c5322) {
        AbstractC3659.m7687(c5322);
        this.f3581 = c5322;
        C5253 c5253 = c5322.f20187;
        C5322.m10559(c5253);
        this.f3580 = c5253;
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ʼˎ */
    public final void mo2981(Bundle bundle) {
        C5253 c5253 = this.f3580;
        ((C5322) ((ᵎﹶ) c5253).ʾˋ).f20206.getClass();
        c5253.m10373(bundle, System.currentTimeMillis());
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ʽ */
    public final void mo2982(String str, String str2, Bundle bundle) {
        C5253 c5253 = this.f3580;
        ((C5322) ((ᵎﹶ) c5253).ʾˋ).f20206.getClass();
        c5253.m10379(str, str2, bundle, true, true, System.currentTimeMillis());
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ˆʾ */
    public final int mo2983(String str) {
        C5253 c5253 = this.f3580;
        c5253.getClass();
        AbstractC3659.m7680(str);
        ((C5322) ((ᵎﹶ) c5253).ʾˋ).getClass();
        return 25;
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ˈ */
    public final long mo2984() {
        C5339 c5339 = this.f3581.f20208;
        C5322.m10560(c5339);
        return c5339.m10699();
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ˉʿ */
    public final String mo2985() {
        return this.f3580.m10382();
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ˉˆ */
    public final void mo2986(String str) {
        C5322 c5322 = this.f3581;
        C5298 c5298 = c5322.f20210;
        C5322.m10558(c5298);
        c5322.f20206.getClass();
        c5298.m10501(str, SystemClock.elapsedRealtime());
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ˑﹳ */
    public final void mo2987(String str, String str2, Bundle bundle) {
        C5253 c5253 = this.f3581.f20187;
        C5322.m10559(c5253);
        c5253.m10385(str, str2, bundle);
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ٴﹶ */
    public final String mo2988() {
        return (String) this.f3580.f19812.get();
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ᵎﹶ */
    public final String mo2989() {
        C5356 c5356 = ((C5322) ((ᵎﹶ) this.f3580).ʾˋ).f20209;
        C5322.m10559(c5356);
        C5351 c5351 = c5356.f20383;
        if (c5351 != null) {
            return c5351.f20370;
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r9v2, types: [יـ.ﹳᐧ, java.util.Map] */
    @Override // p447.InterfaceC5273
    /* renamed from: ᵔʾ */
    public final Map mo2990(String str, String str2, boolean z) {
        C5253 c5253 = this.f3580;
        C5322 c5322 = (C5322) ((ᵎﹶ) c5253).ʾˋ;
        C5215 c5215 = c5322.f20200;
        C5344 c5344 = c5322.f20193;
        C5322.m10556(c5215);
        if (c5215.m10206()) {
            C5322.m10556(c5344);
            c5344.f20343.m10217("Cannot get user properties from analytics worker thread");
            return Collections.EMPTY_MAP;
        }
        if (C4486.m9046()) {
            C5322.m10556(c5344);
            c5344.f20343.m10217("Cannot get user properties from main thread");
            return Collections.EMPTY_MAP;
        }
        AtomicReference atomicReference = new AtomicReference();
        C5215 c52152 = c5322.f20200;
        C5322.m10556(c52152);
        c52152.m10199(atomicReference, 5000L, "get user properties", new RunnableC5213(c5253, atomicReference, str, str2, z));
        List<C5241> list = (List) atomicReference.get();
        if (list == null) {
            C5322.m10556(c5344);
            c5344.f20343.m10216(Boolean.valueOf(z), "Timed out waiting for handle get user properties, includeInternal");
            return Collections.EMPTY_MAP;
        }
        ?? c3368 = new C3368(list.size());
        for (C5241 c5241 : list) {
            Object m10309 = c5241.m10309();
            if (m10309 != null) {
                c3368.put(c5241.f19705, m10309);
            }
        }
        return c3368;
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ᵔᵢ */
    public final List mo2991(String str, String str2) {
        C5253 c5253 = this.f3580;
        C5322 c5322 = (C5322) ((ᵎﹶ) c5253).ʾˋ;
        C5215 c5215 = c5322.f20200;
        C5344 c5344 = c5322.f20193;
        C5322.m10556(c5215);
        if (c5215.m10206()) {
            C5322.m10556(c5344);
            c5344.f20343.m10217("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList(0);
        }
        if (C4486.m9046()) {
            C5322.m10556(c5344);
            c5344.f20343.m10217("Cannot get conditional user properties from main thread");
            return new ArrayList(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        C5215 c52152 = c5322.f20200;
        C5322.m10556(c52152);
        c52152.m10199(atomicReference, 5000L, "get conditional user properties", new ˎᐧ(c5253, atomicReference, str, str2));
        List list = (List) atomicReference.get();
        if (list != null) {
            return C5339.m10670(list);
        }
        C5322.m10556(c5344);
        c5344.f20343.m10216(null, "Timed out waiting for get conditional user properties");
        return new ArrayList();
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ﾞʻ */
    public final void mo2992(String str) {
        C5322 c5322 = this.f3581;
        C5298 c5298 = c5322.f20210;
        C5322.m10558(c5298);
        c5322.f20206.getClass();
        c5298.m10498(str, SystemClock.elapsedRealtime());
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ﾞᴵ */
    public final String mo2993() {
        C5356 c5356 = ((C5322) ((ᵎﹶ) this.f3580).ʾˋ).f20209;
        C5322.m10559(c5356);
        C5351 c5351 = c5356.f20383;
        if (c5351 != null) {
            return c5351.f20371;
        }
        return null;
    }
}
