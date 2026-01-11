package p245;

import com.parse.ٴʼ;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p003.C0778;
import p071.C1631;
import p230.C3162;
import p277.C3529;
import p277.C3537;
import p277.InterfaceC3536;
import p404.C4776;
import p404.C4777;
import p404.C4788;
import p404.C4797;
import p404.C4803;
import p404.C4807;
import p404.InterfaceC4786;
import ﹳˋ.ʽʽ;

/* renamed from: יʻ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3290 implements InterfaceC4786 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C3290 f12670 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4807 f12669 = new C4807(C4777.class, InterfaceC3536.class, new C3162(3));

    @Override // p404.InterfaceC4786
    /* renamed from: ʽ */
    public final Object mo6541(ٴʼ r7, C4797 c4797, C0778 c0778) {
        C1631 c1631;
        List arrayList;
        HashMap hashMap = new HashMap();
        for (int i = 0; i < ((List) r7.ʽʽ).size(); i++) {
            C3537 c3537 = r7.ᵔٴ(i);
            if (c3537.f13882.equals(C3529.f13869)) {
                ʽʽ r3 = c3537.f13883;
                if (r3 instanceof AbstractC3286) {
                    c1631 = ((AbstractC3286) r3).mo7081();
                } else {
                    if (!(r3 instanceof C4777)) {
                        throw new GeneralSecurityException("Cannot get output prefix for key of class " + r3.getClass().getName() + " with parameters " + r3.ˉˆ());
                    }
                    c1631 = ((C4777) r3).f18019;
                }
                C3263 c3263 = new C3263((InterfaceC3536) c0778.m2821(c3537), c3537.f13880);
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
                arrayList.add(c3263);
            }
        }
        if (!c4797.f18046.isEmpty()) {
            C4803 c4803 = (C4803) C4788.f18032.f18033.get();
            if (c4803 == null) {
                c4803 = C4788.f18031;
            }
            c4803.getClass();
        }
        return new C3270(new C3263((InterfaceC3536) c0778.m2821(r7.ﹳـ()), r7.ﹳـ().f13880), new C4776(hashMap));
    }

    @Override // p404.InterfaceC4786
    /* renamed from: ⁱˊ */
    public final Class mo6542() {
        return InterfaceC3536.class;
    }

    @Override // p404.InterfaceC4786
    /* renamed from: ﹳٴ */
    public final Class mo6543() {
        return InterfaceC3536.class;
    }
}
