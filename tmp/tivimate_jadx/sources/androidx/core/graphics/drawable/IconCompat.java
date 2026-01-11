package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.lang.reflect.InvocationTargetException;
import p028.AbstractC1116;
import p223.C3056;

/* loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final PorterDuff.Mode f308 = PorterDuff.Mode.SRC_IN;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public String f311;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public Object f316;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f317 = -1;

    /* renamed from: ʽ, reason: contains not printable characters */
    public byte[] f310 = null;

    /* renamed from: ˈ, reason: contains not printable characters */
    public Parcelable f312 = null;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f313 = 0;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f318 = 0;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public ColorStateList f314 = null;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public PorterDuff.Mode f315 = f308;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public String f309 = null;

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.core.graphics.drawable.IconCompat, androidx.versionedparcelable.CustomVersionedParcelable] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static IconCompat m117(int i) {
        if (i == 0) {
            throw new IllegalArgumentException("Drawable resource ID must not be 0");
        }
        ?? customVersionedParcelable = new CustomVersionedParcelable();
        customVersionedParcelable.f310 = null;
        customVersionedParcelable.f312 = null;
        customVersionedParcelable.f318 = 0;
        customVersionedParcelable.f314 = null;
        customVersionedParcelable.f315 = f308;
        customVersionedParcelable.f309 = null;
        customVersionedParcelable.f317 = 2;
        customVersionedParcelable.f313 = i;
        customVersionedParcelable.f316 = "";
        customVersionedParcelable.f311 = "";
        return customVersionedParcelable;
    }

    public final String toString() {
        String str;
        if (this.f317 == -1) {
            return String.valueOf(this.f316);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        switch (this.f317) {
            case 1:
                str = "BITMAP";
                break;
            case 2:
                str = "RESOURCE";
                break;
            case 3:
                str = "DATA";
                break;
            case 4:
                str = "URI";
                break;
            case 5:
                str = "BITMAP_MASKABLE";
                break;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                str = "URI_MASKABLE";
                break;
            default:
                str = "UNKNOWN";
                break;
        }
        sb.append(str);
        switch (this.f317) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f316).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f316).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.f311);
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(m119())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f313);
                if (this.f318 != 0) {
                    sb.append(" off=");
                    sb.append(this.f318);
                    break;
                }
                break;
            case 4:
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                sb.append(" uri=");
                sb.append(this.f316);
                break;
        }
        if (this.f314 != null) {
            sb.append(" tint=");
            sb.append(this.f314);
        }
        if (this.f315 != f308) {
            sb.append(" mode=");
            sb.append(this.f315);
        }
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Uri m118() {
        int i = this.f317;
        if (i == -1) {
            int i2 = Build.VERSION.SDK_INT;
            Object obj = this.f316;
            if (i2 >= 28) {
                return AbstractC1116.m3538(obj);
            }
            try {
                return (Uri) obj.getClass().getMethod("getUri", null).invoke(obj, null);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                return null;
            }
        }
        if (i == 4 || i == 6) {
            return Uri.parse((String) this.f316);
        }
        throw new IllegalStateException("called getUri() on " + this);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m119() {
        int i = this.f317;
        if (i != -1) {
            if (i == 2) {
                return this.f313;
            }
            throw new IllegalStateException("called getResId() on " + this);
        }
        int i2 = Build.VERSION.SDK_INT;
        Object obj = this.f316;
        if (i2 >= 28) {
            return AbstractC1116.m3535(obj);
        }
        try {
            return ((Integer) obj.getClass().getMethod("getResId", null).invoke(obj, null)).intValue();
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            return 0;
        }
    }
}
