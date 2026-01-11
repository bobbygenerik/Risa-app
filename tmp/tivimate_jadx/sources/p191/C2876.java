package p191;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;

/* renamed from: ˋﾞ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2876 implements InterfaceC2873 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final String[] f10796 = {"_data"};

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final String[] f10797 = {"_data"};

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ContentResolver f10798;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f10799;

    public /* synthetic */ C2876(ContentResolver contentResolver, int i) {
        this.f10799 = i;
        this.f10798 = contentResolver;
    }

    @Override // p191.InterfaceC2873
    /* renamed from: ﹳٴ */
    public final Cursor mo6373(Uri uri) {
        switch (this.f10799) {
            case 0:
                String lastPathSegment = uri.getLastPathSegment();
                return this.f10798.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f10796, "kind = 1 AND image_id = ?", new String[]{lastPathSegment}, null);
            default:
                String lastPathSegment2 = uri.getLastPathSegment();
                return this.f10798.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f10797, "kind = 1 AND video_id = ?", new String[]{lastPathSegment2}, null);
        }
    }
}
