package p229;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import androidx.lifecycle.AbstractC0157;
import androidx.lifecycle.C0180;
import androidx.lifecycle.C0184;
import androidx.lifecycle.C0190;
import androidx.lifecycle.EnumC0174;
import androidx.lifecycle.InterfaceC0158;
import androidx.lifecycle.InterfaceC0191;
import androidx.lifecycle.RunnableC0197;
import p026.C1079;
import p077.C1666;
import p262.C3433;
import p333.InterfaceC4203;
import יˋ.ˈ;

/* renamed from: ˑʼ.ٴﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3115 implements InterfaceC0158, InterfaceC4203, InterfaceC0191 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final RunnableC0197 f11854;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final AbstractComponentCallbacksC3123 f11855;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C0180 f11857;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C0184 f11856 = null;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public C3433 f11858 = null;

    public C3115(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, C0180 c0180, RunnableC0197 runnableC0197) {
        this.f11855 = abstractComponentCallbacksC3123;
        this.f11857 = c0180;
        this.f11854 = runnableC0197;
    }

    @Override // androidx.lifecycle.InterfaceC0158
    /* renamed from: ʾˋ */
    public final C1079 mo677() {
        Application application;
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11855;
        Context applicationContext = abstractComponentCallbacksC3123.m6779().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        C1079 c1079 = new C1079();
        if (application != null) {
            c1079.m3425(C0190.f1086, application);
        }
        c1079.m3425(AbstractC0157.f1033, abstractComponentCallbacksC3123);
        c1079.m3425(AbstractC0157.f1032, this);
        Bundle bundle = abstractComponentCallbacksC3123.f11906;
        if (bundle != null) {
            c1079.m3425(AbstractC0157.f1029, bundle);
        }
        return c1079;
    }

    @Override // androidx.lifecycle.InterfaceC0162
    /* renamed from: ˋᵔ */
    public final C0184 mo691() {
        m6756();
        return this.f11856;
    }

    @Override // androidx.lifecycle.InterfaceC0191
    /* renamed from: ᵔי */
    public final C0180 mo724() {
        m6756();
        return this.f11857;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m6756() {
        if (this.f11856 == null) {
            this.f11856 = new C0184(this);
            C3433 c3433 = new C3433(new C1666(this, new ˈ(29, this)));
            this.f11858 = c3433;
            c3433.m7343();
            this.f11854.run();
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6757(EnumC0174 enumC0174) {
        this.f11856.m710(enumC0174);
    }

    @Override // p333.InterfaceC4203
    /* renamed from: ﾞᴵ */
    public final C3125 mo3852() {
        m6756();
        return (C3125) this.f11858.f13456;
    }
}
