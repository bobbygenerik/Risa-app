package androidx.lifecycle;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import p223.C3056;
import p229.C3125;
import p275.AbstractC3522;
import p275.RunnableC3510;

/* renamed from: androidx.lifecycle.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0210 implements InterfaceC0183 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object f1123;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f1124;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f1125;

    public C0210(InterfaceC0179 interfaceC0179) {
        this.f1124 = 2;
        this.f1125 = interfaceC0179;
        C0169 c0169 = C0169.f1055;
        Class<?> cls = interfaceC0179.getClass();
        C0205 c0205 = (C0205) c0169.f1057.get(cls);
        this.f1123 = c0205 == null ? c0169.m698(cls, null) : c0205;
    }

    public /* synthetic */ C0210(Object obj, int i, Object obj2) {
        this.f1124 = i;
        this.f1125 = obj;
        this.f1123 = obj2;
    }

    @Override // androidx.lifecycle.InterfaceC0183
    /* renamed from: ᵎﹶ */
    public final void mo679(InterfaceC0162 interfaceC0162, EnumC0174 enumC0174) {
        switch (this.f1124) {
            case 0:
                InterfaceC0179 interfaceC0179 = (ʿˋ.ʽﹳ) this.f1125;
                switch (AbstractC0182.f1072[enumC0174.ordinal()]) {
                    case 1:
                    case 2:
                    case 4:
                    case 5:
                        break;
                    case 3:
                        switch (((ʿˋ.ʽﹳ) interfaceC0179).ʾˋ) {
                            case 0:
                                break;
                            default:
                                (Build.VERSION.SDK_INT >= 28 ? AbstractC3522.m7489(Looper.getMainLooper()) : new Handler(Looper.getMainLooper())).postDelayed(new RunnableC3510(0), 500L);
                                ((C0184) ((ʿˋ.ʽﹳ) interfaceC0179).ᴵˊ).m715(interfaceC0179);
                                break;
                        }
                    case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                        switch (((ʿˋ.ʽﹳ) interfaceC0179).ʾˋ) {
                            case 0:
                                ((ٴʽ.יـ) ((ʿˋ.ʽﹳ) interfaceC0179).ᴵˊ).ʽ = null;
                                break;
                        }
                    case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                        throw new IllegalArgumentException("ON_ANY must not been send by anybody");
                    default:
                        throw new NoWhenBranchMatchedException();
                }
                InterfaceC0183 interfaceC0183 = (InterfaceC0183) this.f1123;
                if (interfaceC0183 != null) {
                    interfaceC0183.mo679(interfaceC0162, enumC0174);
                    return;
                }
                return;
            case 1:
                if (enumC0174 == EnumC0174.ON_START) {
                    ((C0184) this.f1125).m715(this);
                    ((C3125) this.f1123).m6839();
                    return;
                }
                return;
            default:
                C0205 c0205 = (C0205) this.f1123;
                InterfaceC0179 interfaceC01792 = (InterfaceC0179) this.f1125;
                HashMap hashMap = c0205.f1116;
                C0205.m736((List) hashMap.get(enumC0174), interfaceC0162, enumC0174, interfaceC01792);
                C0205.m736((List) hashMap.get(EnumC0174.ON_ANY), interfaceC0162, enumC0174, interfaceC01792);
                return;
        }
    }
}
