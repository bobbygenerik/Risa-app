package p274;

import android.os.Handler;
import android.os.Message;
import java.util.TreeMap;
import p001.C0765;
import p291.C3612;
import p305.AbstractC3712;
import p364.C4443;

/* renamed from: ـᵢ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3491 implements Handler.Callback {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C4443 f13696;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public boolean f13698;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public C3612 f13699;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public boolean f13700;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C3500 f13701;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f13703;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final TreeMap f13702 = new TreeMap();

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Handler f13697 = AbstractC3712.m7759(this);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C0765 f13695 = new C0765(0);

    public C3491(C3612 c3612, C3500 c3500, C4443 c4443) {
        this.f13699 = c3612;
        this.f13701 = c3500;
        this.f13696 = c4443;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (!this.f13703) {
            if (message.what != 1) {
                return false;
            }
            C3490 c3490 = (C3490) message.obj;
            long j = c3490.f13694;
            long j2 = c3490.f13693;
            Long valueOf = Long.valueOf(j2);
            TreeMap treeMap = this.f13702;
            Long l = (Long) treeMap.get(valueOf);
            if (l == null) {
                treeMap.put(Long.valueOf(j2), Long.valueOf(j));
                return true;
            }
            if (l.longValue() > j) {
                treeMap.put(Long.valueOf(j2), Long.valueOf(j));
            }
        }
        return true;
    }
}
