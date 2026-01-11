package p000;

import j$.util.Objects;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

/* renamed from: ʻʻ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0755 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f3124;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f3125;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f3126;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f3127;

    public C0755(int i, int i2, long j, long j2) {
        this.f3127 = i;
        this.f3126 = i2;
        this.f3124 = j;
        this.f3125 = j2;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C0755 m2757(File file) {
        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
        try {
            C0755 c0755 = new C0755(dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readLong(), dataInputStream.readLong());
            dataInputStream.close();
            return c0755;
        } finally {
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof C0755)) {
            C0755 c0755 = (C0755) obj;
            if (this.f3126 == c0755.f3126 && this.f3124 == c0755.f3124 && this.f3127 == c0755.f3127 && this.f3125 == c0755.f3125) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f3126), Long.valueOf(this.f3124), Integer.valueOf(this.f3127), Long.valueOf(this.f3125));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m2758(File file) {
        file.delete();
        DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
        try {
            dataOutputStream.writeInt(this.f3127);
            dataOutputStream.writeInt(this.f3126);
            dataOutputStream.writeLong(this.f3124);
            dataOutputStream.writeLong(this.f3125);
            dataOutputStream.close();
        } catch (Throwable th) {
            try {
                dataOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
