package p159;

import android.database.Cursor;
import android.support.v4.media.session.ⁱˊ;
import androidx.leanback.widget.ˉˆ;
import java.util.Arrays;

/* renamed from: ˊˎ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2544 extends AbstractC2545 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int[] f9644;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public byte[][] f9645;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public double[] f9646;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public String[] f9647;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public long[] f9648;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public Cursor f9649;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static void m5695(Cursor cursor, int i) {
        if (i < 0 || i >= cursor.getColumnCount()) {
            ⁱˊ.ʻٴ(25, "column index out of range");
            throw null;
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (!this.f9650) {
            m5699();
            this.f9644 = new int[0];
            this.f9648 = new long[0];
            this.f9646 = new double[0];
            this.f9647 = new String[0];
            this.f9645 = new byte[0];
            reset();
        }
        this.f9650 = true;
    }

    @Override // p417.InterfaceC4930
    public final byte[] getBlob(int i) {
        m5699();
        Cursor m5697 = m5697();
        m5695(m5697, i);
        return m5697.getBlob(i);
    }

    @Override // p417.InterfaceC4930
    public final int getColumnCount() {
        m5699();
        m5696();
        Cursor cursor = this.f9649;
        if (cursor != null) {
            return cursor.getColumnCount();
        }
        return 0;
    }

    @Override // p417.InterfaceC4930
    public final String getColumnName(int i) {
        m5699();
        m5696();
        Cursor cursor = this.f9649;
        if (cursor == null) {
            throw new IllegalStateException("Required value was null.");
        }
        m5695(cursor, i);
        return cursor.getColumnName(i);
    }

    @Override // p417.InterfaceC4930
    public final double getDouble(int i) {
        m5699();
        Cursor m5697 = m5697();
        m5695(m5697, i);
        return m5697.getDouble(i);
    }

    @Override // p417.InterfaceC4930
    public final long getLong(int i) {
        m5699();
        Cursor m5697 = m5697();
        m5695(m5697, i);
        return m5697.getLong(i);
    }

    @Override // p417.InterfaceC4930
    public final boolean isNull(int i) {
        m5699();
        Cursor m5697 = m5697();
        m5695(m5697, i);
        return m5697.isNull(i);
    }

    @Override // p417.InterfaceC4930
    public final void reset() {
        m5699();
        Cursor cursor = this.f9649;
        if (cursor != null) {
            cursor.close();
        }
        this.f9649 = null;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m5696() {
        if (this.f9649 == null) {
            this.f9649 = this.f9651.mo3709(new ˉˆ(29, this));
        }
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ˑٴ */
    public final void mo3391(int i, String str) {
        m5699();
        m5698(3, i);
        this.f9644[i] = 3;
        this.f9647[i] = str;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final Cursor m5697() {
        Cursor cursor = this.f9649;
        if (cursor != null) {
            return cursor;
        }
        ⁱˊ.ʻٴ(21, "no row");
        throw null;
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ᵎᵔ */
    public final boolean mo3392() {
        m5699();
        m5696();
        Cursor cursor = this.f9649;
        if (cursor != null) {
            return cursor.moveToNext();
        }
        throw new IllegalStateException("Required value was null.");
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m5698(int i, int i2) {
        int i3 = i2 + 1;
        int[] iArr = this.f9644;
        if (iArr.length < i3) {
            this.f9644 = Arrays.copyOf(iArr, i3);
        }
        if (i == 1) {
            long[] jArr = this.f9648;
            if (jArr.length < i3) {
                this.f9648 = Arrays.copyOf(jArr, i3);
                return;
            }
            return;
        }
        if (i == 2) {
            double[] dArr = this.f9646;
            if (dArr.length < i3) {
                this.f9646 = Arrays.copyOf(dArr, i3);
                return;
            }
            return;
        }
        if (i == 3) {
            String[] strArr = this.f9647;
            if (strArr.length < i3) {
                this.f9647 = (String[]) Arrays.copyOf(strArr, i3);
                return;
            }
            return;
        }
        if (i != 4) {
            return;
        }
        byte[][] bArr = this.f9645;
        if (bArr.length < i3) {
            this.f9645 = (byte[][]) Arrays.copyOf(bArr, i3);
        }
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ᵔᵢ */
    public final void mo3393(int i, byte[] bArr) {
        m5699();
        m5698(4, i);
        this.f9644[i] = 4;
        this.f9645[i] = bArr;
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ᵔﹳ */
    public final String mo3394(int i) {
        m5699();
        Cursor m5697 = m5697();
        m5695(m5697, i);
        return m5697.getString(i);
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ⁱˊ */
    public final void mo3395(int i, double d) {
        m5699();
        m5698(2, i);
        this.f9644[i] = 2;
        this.f9646[i] = d;
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ﹳٴ */
    public final void mo3396(int i) {
        m5699();
        m5698(5, i);
        this.f9644[i] = 5;
    }

    @Override // p417.InterfaceC4930
    /* renamed from: ﾞᴵ */
    public final void mo3397(int i, long j) {
        m5699();
        m5698(1, i);
        this.f9644[i] = 1;
        this.f9648[i] = j;
    }
}
