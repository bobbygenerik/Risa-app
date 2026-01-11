package p030;

import android.adservices.measurement.MeasurementManager;
import android.net.Uri;
import android.view.InputEvent;
import androidx.lifecycle.ˉˆ;
import com.bumptech.glide.ˈ;
import p013.C0907;
import p028.ExecutorC1119;
import p114.C1986;
import p126.InterfaceC2136;
import p153.C2480;
import p324.C4030;
import p373.EnumC4532;
import ˉᵎ.ⁱˊ;
import ﹳˋ.ʽʽ;

/* renamed from: ʼᵎ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1131 extends ˈ {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final MeasurementManager f4399;

    public AbstractC1131(MeasurementManager measurementManager) {
        this.f4399 = measurementManager;
    }

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public static Object m3554(AbstractC1131 abstractC1131, AbstractC1136 abstractC1136, InterfaceC2136<? super C0907> interfaceC2136) {
        new C4030(1, ⁱˊ.ˈٴ(interfaceC2136)).m8206();
        MeasurementManager measurementManager = abstractC1131.f4399;
        throw null;
    }

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public static Object m3555(AbstractC1131 abstractC1131, Uri uri, InterfaceC2136<? super C0907> interfaceC2136) {
        C4030 c4030 = new C4030(1, ⁱˊ.ˈٴ(interfaceC2136));
        c4030.m8206();
        abstractC1131.f4399.registerTrigger(uri, new ExecutorC1119(1), new C1986(c4030));
        Object m8209 = c4030.m8209();
        return m8209 == EnumC4532.f16960 ? m8209 : C0907.f3832;
    }

    /* renamed from: ˉـ, reason: contains not printable characters */
    public static Object m3556(AbstractC1131 abstractC1131, AbstractC1133 abstractC1133, InterfaceC2136<? super C0907> interfaceC2136) {
        new C4030(1, ⁱˊ.ˈٴ(interfaceC2136)).m8206();
        MeasurementManager measurementManager = abstractC1131.f4399;
        throw null;
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public static Object m3557(AbstractC1131 abstractC1131, InterfaceC2136<? super Integer> interfaceC2136) {
        C4030 c4030 = new C4030(1, ⁱˊ.ˈٴ(interfaceC2136));
        c4030.m8206();
        abstractC1131.f4399.getMeasurementApiStatus(new ExecutorC1119(1), new C1986(c4030));
        return c4030.m8209();
    }

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public static Object m3558(AbstractC1131 abstractC1131, AbstractC1135 abstractC1135, InterfaceC2136<? super C0907> interfaceC2136) {
        new C4030(1, ⁱˊ.ˈٴ(interfaceC2136)).m8206();
        MeasurementManager measurementManager = abstractC1131.f4399;
        throw null;
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public static Object m3559(AbstractC1131 abstractC1131, Uri uri, InputEvent inputEvent, InterfaceC2136<? super C0907> interfaceC2136) {
        C4030 c4030 = new C4030(1, ⁱˊ.ˈٴ(interfaceC2136));
        c4030.m8206();
        abstractC1131.f4399.registerSource(uri, inputEvent, new ExecutorC1119(1), new C1986(c4030));
        Object m8209 = c4030.m8209();
        return m8209 == EnumC4532.f16960 ? m8209 : C0907.f3832;
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public static Object m3560(AbstractC1131 abstractC1131, AbstractC1132 abstractC1132, InterfaceC2136<? super C0907> interfaceC2136) {
        ˉˆ r3 = new ˉˆ(abstractC1131, (InterfaceC2136) null, 4);
        C2480 c2480 = new C2480(interfaceC2136, interfaceC2136.mo3551());
        Object obj = ʽʽ.ˈٴ(c2480, true, c2480, r3);
        return obj == EnumC4532.f16960 ? obj : C0907.f3832;
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public Object m3561(AbstractC1132 abstractC1132, InterfaceC2136<? super C0907> interfaceC2136) {
        return m3560(this, abstractC1132, interfaceC2136);
    }

    /* renamed from: ʿ, reason: contains not printable characters */
    public Object m3562(AbstractC1136 abstractC1136, InterfaceC2136<? super C0907> interfaceC2136) {
        return m3554(this, abstractC1136, interfaceC2136);
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public Object m3563(Uri uri, InterfaceC2136<? super C0907> interfaceC2136) {
        return m3555(this, uri, interfaceC2136);
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public Object m3564(AbstractC1135 abstractC1135, InterfaceC2136<? super C0907> interfaceC2136) {
        return m3558(this, abstractC1135, interfaceC2136);
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public Object m3565(InterfaceC2136<? super Integer> interfaceC2136) {
        return m3557(this, interfaceC2136);
    }

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public Object m3566(AbstractC1133 abstractC1133, InterfaceC2136<? super C0907> interfaceC2136) {
        return m3556(this, abstractC1133, interfaceC2136);
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Object m3567(Uri uri, InputEvent inputEvent, InterfaceC2136<? super C0907> interfaceC2136) {
        return m3559(this, uri, inputEvent, interfaceC2136);
    }
}
