package p428;

import j$.util.Objects;
import p055.C1454;
import p305.AbstractC3731;
import p392.C4678;

/* renamed from: ﹶʽ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5057 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC5067[] f19027;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C1454 f19028;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Object f19029;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4678[] f19030;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f19031;

    public C5057(C4678[] c4678Arr, InterfaceC5067[] interfaceC5067Arr, C1454 c1454, Object obj) {
        AbstractC3731.m7849(c4678Arr.length == interfaceC5067Arr.length);
        this.f19030 = c4678Arr;
        this.f19027 = (InterfaceC5067[]) interfaceC5067Arr.clone();
        this.f19028 = c1454;
        this.f19029 = obj;
        this.f19031 = c4678Arr.length;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m9961(int i) {
        return this.f19030[i] != null;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m9962(C5057 c5057, int i) {
        return c5057 != null && Objects.equals(this.f19030[i], c5057.f19030[i]) && Objects.equals(this.f19027[i], c5057.f19027[i]);
    }
}
