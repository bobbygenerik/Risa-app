package p425;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;

/* renamed from: ﹶ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5033 extends ContentObserver {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ C5038 f18901;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Uri f18902;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ContentResolver f18903;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5033(C5038 c5038, Handler handler, ContentResolver contentResolver, Uri uri) {
        super(handler);
        this.f18901 = c5038;
        this.f18903 = contentResolver;
        this.f18902 = uri;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        C5038 c5038 = this.f18901;
        c5038.m9949(C5049.m9954(c5038.f18950, c5038.f18942, c5038.f18948));
    }
}
