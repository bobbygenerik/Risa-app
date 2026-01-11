package p223;

import android.content.Context;
import com.google.android.gms.internal.play_billing.C0559;
import p121.AbstractC2026;
import p152.AbstractC2452;
import p329.InterfaceC4104;

/* renamed from: ˏᵢ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3058 extends AbstractC2452 implements InterfaceC4104 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Context f11607;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ Object f11608;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ int f11609;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3058(int i, Context context, Object obj) {
        super(0);
        this.f11609 = i;
        this.f11607 = context;
        this.f11608 = obj;
    }

    @Override // p329.InterfaceC4104
    /* renamed from: ʽ */
    public final Object mo716() {
        switch (this.f11609) {
            case 0:
                return AbstractC2026.m5059(this.f11607, ((C0559) this.f11608).f2349.concat(".preferences_pb"));
            default:
                return this.f11607.getSharedPreferences((String) this.f11608, 0);
        }
    }
}
