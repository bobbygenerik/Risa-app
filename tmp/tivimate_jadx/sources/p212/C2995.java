package p212;

import java.util.Collections;
import java.util.HashSet;
import ﹳˋ.ٴﹶ;

/* renamed from: ˏ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2995 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final HashSet f11422;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f11423;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f11424;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final HashSet f11425;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final HashSet f11426;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public String f11427 = null;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public InterfaceC2986 f11428;

    public C2995(Class cls, Class[] clsArr) {
        HashSet hashSet = new HashSet();
        this.f11426 = hashSet;
        this.f11422 = new HashSet();
        this.f11423 = 0;
        this.f11424 = 0;
        this.f11425 = new HashSet();
        hashSet.add(C2988.m6519(cls));
        for (Class cls2 : clsArr) {
            ٴﹶ.ᵎﹶ(cls2, "Null interface");
            this.f11426.add(C2988.m6519(cls2));
        }
    }

    public C2995(C2988 c2988, C2988[] c2988Arr) {
        HashSet hashSet = new HashSet();
        this.f11426 = hashSet;
        this.f11422 = new HashSet();
        this.f11423 = 0;
        this.f11424 = 0;
        this.f11425 = new HashSet();
        hashSet.add(c2988);
        for (C2988 c29882 : c2988Arr) {
            ٴﹶ.ᵎﹶ(c29882, "Null interface");
        }
        Collections.addAll(this.f11426, c2988Arr);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m6523() {
        if (!(this.f11423 == 0)) {
            throw new IllegalStateException("Instantiation type has already been set.");
        }
        this.f11423 = 2;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2994 m6524() {
        if (this.f11428 != null) {
            return new C2994(this.f11427, new HashSet(this.f11426), new HashSet(this.f11422), this.f11423, this.f11424, this.f11428, this.f11425);
        }
        throw new IllegalStateException("Missing required property: factory.");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6525(C2982 c2982) {
        if (this.f11426.contains(c2982.f11397)) {
            throw new IllegalArgumentException("Components are not allowed to depend on interfaces they themselves provide.");
        }
        this.f11422.add(c2982);
    }
}
