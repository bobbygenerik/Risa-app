package androidx.lifecycle;

import android.view.Display;
import ar.tvplayer.core.data.db.entities.RecordingRepeatRules;
import ar.tvplayer.core.domain.F;
import ar.tvplayer.tv.base.ui.WebViewActivity;
import com.android.billingclient.api.Purchase;
import java.io.File;
import java.lang.reflect.Proxy;
import java.util.UUID;
import java.util.concurrent.Callable;
import org.json.JSONObject;
import p013.C0907;
import p036.AbstractActivityC1262;
import p052.C1407;
import p052.C1408;
import p062.C1591;
import p152.AbstractC2443;
import p152.C2448;
import p152.C2461;
import p223.C3056;
import p329.InterfaceC4104;
import p430.AbstractC5096;
import p435.AbstractC5143;
import ʼⁱ.ʻᵎ;
import ʼⁱ.ʽˑ;
import ʼⁱ.ˆˎ;
import ʼⁱ.ˎʾ;
import ʼⁱ.יˉ;
import ʼⁱ.ﹳﹳ;
import ʾʼ.ˉˆ;
import ﹶﾞ.ⁱי;

/* renamed from: androidx.lifecycle.ـˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0185 implements InterfaceC4104 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f1083;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f1084;

    public /* synthetic */ C0185(int i, Object obj) {
        this.f1083 = i;
        this.f1084 = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v77, types: [java.lang.Object, ʻᵢ.ʽ] */
    /* JADX WARN: Type inference failed for: r1v3, types: [ﹳי.ʽ, java.lang.Object] */
    @Override // p329.InterfaceC4104
    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object mo716() {
        boolean z;
        AbstractC0196 abstractC0196;
        int i;
        int i2;
        int i3;
        switch (this.f1083) {
            case 0:
                return AbstractC0157.m673((InterfaceC0191) this.f1084);
            case 1:
                JSONObject jSONObject = ((Purchase) ((C2448) this.f1084).f9409).f1606;
                String optString = jSONObject.optString("token", jSONObject.optString("purchaseToken"));
                if (optString == null) {
                    throw new IllegalArgumentException("Purchase token must be set");
                }
                ?? obj = new Object();
                ((ﹳי.ʽ) obj).ʾˋ = optString;
                ar.tvplayer.core.domain.ʻٴ.ﾞᴵ.mo3453(obj, new ar.tvplayer.core.data.api.parse.ˈ(2));
                return C0907.f3832;
            case 2:
                return ((ⁱי) this.f1084).ﾞᴵ(":memory:");
            case 3:
                return ʿˋ.ˉʿ.ᵔﹳ((ʼⁱ.ᵎᵔ) this.f1084);
            case 4:
                return ʿˋ.ˉʿ.ᵔﹳ((ʻᵎ) this.f1084);
            case 5:
                return ʿˋ.ˉʿ.ᵔﹳ((ﹳﹳ) this.f1084);
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return ʿˋ.ˉʿ.ᵔﹳ((ʽˑ) this.f1084);
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return ʿˋ.ˉʿ.ᵔﹳ((יˉ) this.f1084);
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return ʿˋ.ˉʿ.ᵔﹳ((ˎʾ) this.f1084);
            case 9:
                return ((Display) ((ˏˆ.ﹳٴ) this.f1084).ʽʽ).getSupportedModes();
            case 10:
                return ʿˋ.ˉʿ.ᵔﹳ((ˆˎ) this.f1084);
            case 11:
                WebViewActivity webViewActivity = (WebViewActivity) this.f1084;
                int i4 = WebViewActivity.ᐧᴵ;
                return webViewActivity.getIntent().getParcelableExtra("ar.tvplayer.tv.base.Args");
            case 12:
                return ((Callable) this.f1084).call();
            case 13:
                ((Runnable) this.f1084).run();
                return C0907.f3832;
            case 14:
                ((AbstractActivityC1262) this.f1084).reportFullyDrawn();
                return null;
            case 15:
                return ʿˋ.ˉʿ.ᵔﹳ((ʽˋ.ʽ) this.f1084);
            case 16:
                ʽˋ.ʾᵎ r0 = (ʽˋ.ʾᵎ) this.f1084;
                r0.ˎـ(r0.ʽˑ == -1);
                return C0907.f3832;
            case 17:
                return ʿˋ.ˉʿ.ᵔﹳ((ʽˋ.ﹳﹳ) this.f1084);
            case 18:
                return (ʾʼ.ﾞᴵ) ((ʾʼ.ﹳٴ) this.f1084).f11928.ـˊ.getValue();
            case 19:
                return ʿˋ.ˉʿ.ᵔﹳ((ʾʼ.ˑﹳ) this.f1084);
            case 20:
                ʾʼ.ᵎﹶ r02 = (ʾʼ.ᵎﹶ) this.f1084;
                int i5 = ʾʼ.ᵎﹶ.ᵎʿ;
                return ʿˋ.ˉʿ.ᵔﹳ(r02);
            case 21:
                return ʿˋ.ˉʿ.ᵔﹳ((ʾʼ.ˆʾ) this.f1084);
            case 22:
                String str = ʿˋ.ˉʿ.ᵔﹳ((ʾʼ.ˉʿ) this.f1084).ʾˋ;
                if (str == null) {
                    return null;
                }
                try {
                    return (RecordingRepeatRules) new C1407(new C1408(0)).m4147(RecordingRepeatRules.class).m4196(str);
                } catch (Exception unused) {
                    return null;
                }
            case 23:
                return ʿˋ.ˉʿ.ᵔﹳ((ˉˆ) this.f1084);
            case 24:
                return ʿˋ.ˉʿ.ᵔﹳ((ʾʼ.ᵔﹳ) this.f1084);
            case 25:
                ʾʼ.ʻٴ r03 = (ʾʼ.ʻٴ) this.f1084;
                int i6 = ʾʼ.ʻٴ.ᵎʿ;
                return ʿˋ.ˉʿ.ᵔﹳ(r03);
            case 26:
                ((C1591) this.f1084).getClass();
                return UUID.randomUUID().toString();
            case 27:
                ʾᵔ.ˑﹳ r04 = (ʾᵔ.ˑﹳ) this.f1084;
                F f = F.ﹳٴ;
                byte[] bArr = ˉᵎ.ⁱˊ.ˈ;
                if (bArr == null || (((byte) (bArr[184] - ᵢـ.ʼˎ.ⁱˊ()[184])) == 50 && f.bG9sC(184) == bArr[187] + 32)) {
                    ar.tvplayer.core.domain.ᵎⁱ.ـˆ();
                } else {
                    ʿˋ.ˋᵔ.ˈ = false;
                    int i7 = ar.tvplayer.core.domain.ᵎⁱ.ˑﹳ;
                    while (i7 != ar.tvplayer.core.domain.ᵎⁱ.ˑﹳ + 0.1d) {
                        i7++;
                    }
                    Byte m10008 = AbstractC5096.m10008(9200 * i7, bArr);
                    if (m10008 != null) {
                        i3 = m10008.byteValue();
                    } else {
                        i3 = ar.tvplayer.core.domain.ᵎⁱ.ˑﹳ;
                        ar.tvplayer.core.domain.ᵎⁱ.ˑﹳ = i3 + 1;
                    }
                    ar.tvplayer.core.domain.ᵎⁱ.ˑﹳ = i3;
                    boolean z2 = ʿˋ.ˋᵔ.ﹳٴ;
                }
                byte[] bArr2 = ﹳˋ.ٴﹶ.ʾˋ;
                if (bArr2 != null && bArr2[364] != 123) {
                    ʿˋ.ˋᵔ.ˑﹳ = false;
                    int i8 = ar.tvplayer.core.domain.ᵎⁱ.ʼˎ;
                    while (i8 != ar.tvplayer.core.domain.ᵎⁱ.ʼˎ + 0.1d) {
                        i8++;
                    }
                    Byte m100082 = AbstractC5096.m10008(44772 * i8, bArr2);
                    if (m100082 != null) {
                        i2 = m100082.byteValue();
                    } else {
                        i2 = ar.tvplayer.core.domain.ᵎⁱ.ʼˎ;
                        ar.tvplayer.core.domain.ᵎⁱ.ʼˎ = i2 + 1;
                    }
                    ar.tvplayer.core.domain.ᵎⁱ.ʼˎ = i2;
                    boolean z3 = ʿˋ.ˋᵔ.ﹳٴ;
                } else if (Proxy.isProxyClass(ar.tvplayer.core.domain.ᵎⁱ.ˉˆ())) {
                    ʿˋ.ˋᵔ.ˑﹳ = false;
                }
                ˊˋ r3 = new ˊˋ(7);
                byte[] bArr3 = ˉᵎ.ⁱˊ.ˈ;
                if (bArr3 == null || (((byte) (bArr3[56] - ᵢـ.ʼˎ.ⁱˊ()[56])) == 48 && f.tP3zW(56) == bArr3[62] + 50)) {
                    z = ar.tvplayer.core.domain.ᵎⁱ.ـˆ();
                } else {
                    ʿˋ.ˋᵔ.ˈ = false;
                    int i9 = ar.tvplayer.core.domain.ᵎⁱ.ˑﹳ;
                    while (i9 != ar.tvplayer.core.domain.ᵎⁱ.ˑﹳ + 0.1d) {
                        i9++;
                    }
                    Byte m100083 = AbstractC5096.m10008(2688 * i9, bArr3);
                    if (m100083 != null) {
                        i = m100083.byteValue();
                    } else {
                        i = ar.tvplayer.core.domain.ᵎⁱ.ˑﹳ;
                        ar.tvplayer.core.domain.ᵎⁱ.ˑﹳ = i + 1;
                    }
                    ar.tvplayer.core.domain.ᵎⁱ.ˑﹳ = i;
                    z = ʿˋ.ˋᵔ.ˈ;
                }
                if (z) {
                    ˏˆ.ﹳٴ r6 = new ˏˆ.ﹳٴ(r04.mo724(), r3, r04.mo677());
                    C2461 m5561 = AbstractC2443.m5561(ʾᵔ.ᵎﹶ.class);
                    String m5583 = m5561.m5583();
                    if (m5583 == null) {
                        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
                    }
                    abstractC0196 = r6.ᵢˏ(m5561, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(m5583));
                } else {
                    ˏˆ.ﹳٴ r62 = new ˏˆ.ﹳٴ(r04.mo724(), (InterfaceC0189) r04, r04.mo677());
                    C2461 m55612 = AbstractC2443.m5561(ʾᵔ.ᵎﹶ.class);
                    String m55832 = m55612.m5583();
                    if (m55832 == null) {
                        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
                    }
                    abstractC0196 = r62.ᵢˏ(m55612, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(m55832));
                }
                return (ʾᵔ.ᵎﹶ) abstractC0196;
            case 28:
                return ʿˋ.ˉʿ.ᵔﹳ((ʾᵔ.ˆʾ) this.f1084);
            default:
                String str2 = (String) this.f1084;
                return new File(AbstractC5143.m10136(str2, "file://", str2));
        }
    }
}
