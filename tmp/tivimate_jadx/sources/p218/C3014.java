package p218;

import com.parse.ٴʼ;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p003.C0778;
import p071.C1631;
import p158.C2537;
import p277.C3529;
import p277.C3537;
import p277.InterfaceC3535;
import p404.C4776;
import p404.C4777;
import p404.C4788;
import p404.C4797;
import p404.C4803;
import p404.C4807;
import p404.InterfaceC4786;
import ﹳˋ.ʽʽ;

/* renamed from: ˏˑ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3014 implements InterfaceC4786 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C3014 f11516 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4807 f11515 = new C4807(C4777.class, InterfaceC3535.class, new C2537(21));

    @Override // p404.InterfaceC4786
    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object mo6541(ٴʼ r7, C4797 c4797, C0778 c0778) {
        C1631 c1631;
        List arrayList;
        HashMap hashMap = new HashMap();
        for (int i = 0; i < ((List) r7.ʽʽ).size(); i++) {
            C3537 c3537 = r7.ᵔٴ(i);
            if (c3537.f13882.equals(C3529.f13869)) {
                InterfaceC3535 interfaceC3535 = (InterfaceC3535) c0778.m2821(c3537);
                ʽʽ r4 = c3537.f13883;
                if (r4 instanceof C3022) {
                    c1631 = ((C3022) r4).f11533;
                } else {
                    if (!(r4 instanceof C4777)) {
                        throw new GeneralSecurityException("Cannot get output prefix for key of class " + r4.getClass().getName() + " with parameters " + r4.ˉˆ());
                    }
                    c1631 = ((C4777) r4).f18019;
                }
                C3019 c3019 = new C3019(interfaceC3535, c3537.f13880);
                byte[] bArr = c1631.f6496;
                if (bArr.length != 0 && bArr.length != 5) {
                    throw new GeneralSecurityException("PrefixMap only supports 0 and 5 byte prefixes");
                }
                if (hashMap.containsKey(c1631)) {
                    arrayList = (List) hashMap.get(c1631);
                } else {
                    arrayList = new ArrayList();
                    hashMap.put(c1631, arrayList);
                }
                arrayList.add(c3019);
            }
        }
        if (!c4797.f18046.isEmpty()) {
            C4803 c4803 = (C4803) C4788.f18032.f18033.get();
            if (c4803 == null) {
                c4803 = C4788.f18031;
            }
            c4803.getClass();
        }
        return new C3020(new C3019((InterfaceC3535) c0778.m2821(r7.ﹳـ()), r7.ﹳـ().f13880), new C4776(hashMap));
    }

    @Override // p404.InterfaceC4786
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Class mo6542() {
        return InterfaceC3535.class;
    }

    @Override // p404.InterfaceC4786
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Class mo6543() {
        return InterfaceC3535.class;
    }
}
