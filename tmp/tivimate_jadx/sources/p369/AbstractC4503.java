package p369;

import android.content.Context;
import android.os.Build;
import com.google.android.gms.internal.measurement.HandlerC0337;
import p229.C3125;
import p296.AbstractC3659;
import p296.C3670;
import p366.C4483;
import p409.C4844;
import p409.C4855;

/* renamed from: ᵢʾ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4503 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3125 f16858;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3670 f16859;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C4855 f16860;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C4483 f16861;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C4844 f16862;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f16863;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f16864;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f16865;

    public AbstractC4503(Context context, C3125 c3125, C3670 c3670, C4506 c4506) {
        AbstractC3659.m7683(context, "Null context is not permitted.");
        AbstractC3659.m7683(c3125, "Api must not be null.");
        AbstractC3659.m7683(c4506, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context applicationContext = context.getApplicationContext();
        AbstractC3659.m7683(applicationContext, "The provided context did not have an application context.");
        this.f16864 = applicationContext;
        String attributionTag = Build.VERSION.SDK_INT >= 30 ? context.getAttributionTag() : null;
        this.f16863 = attributionTag;
        this.f16858 = c3125;
        this.f16859 = c3670;
        this.f16860 = new C4855(c3125, c3670, attributionTag);
        C4844 m9652 = C4844.m9652(applicationContext);
        this.f16862 = m9652;
        this.f16865 = m9652.f18176.getAndIncrement();
        this.f16861 = c4506.f16867;
        HandlerC0337 handlerC0337 = m9652.f18174;
        handlerC0337.sendMessage(handlerC0337.obtainMessage(7, this));
    }
}
