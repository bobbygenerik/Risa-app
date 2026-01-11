package p212;

import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import p003.C0787;
import ﹳˋ.ٴﹶ;

/* renamed from: ˏ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2994 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Set f11415;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f11416;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f11417;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Set f11418;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Set f11419;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f11420;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final InterfaceC2986 f11421;

    public C2994(String str, Set set, Set set2, int i, int i2, InterfaceC2986 interfaceC2986, Set set3) {
        this.f11420 = str;
        this.f11419 = DesugarCollections.unmodifiableSet(set);
        this.f11415 = DesugarCollections.unmodifiableSet(set2);
        this.f11416 = i;
        this.f11417 = i2;
        this.f11421 = interfaceC2986;
        this.f11418 = DesugarCollections.unmodifiableSet(set3);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C2994 m6520(Object obj, Class cls, Class... clsArr) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        hashSet.add(C2988.m6519(cls));
        for (Class cls2 : clsArr) {
            ٴﹶ.ᵎﹶ(cls2, "Null interface");
            hashSet.add(C2988.m6519(cls2));
        }
        return new C2994(null, new HashSet(hashSet), new HashSet(hashSet2), 0, 0, new C0787(obj), hashSet3);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C2995 m6521(C2988 c2988) {
        return new C2995(c2988, new C2988[0]);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C2995 m6522(Class cls) {
        return new C2995(cls, new Class[0]);
    }

    public final String toString() {
        return "Component<" + Arrays.toString(this.f11419.toArray()) + ">{" + this.f11416 + ", type=" + this.f11417 + ", deps=" + Arrays.toString(this.f11415.toArray()) + "}";
    }
}
