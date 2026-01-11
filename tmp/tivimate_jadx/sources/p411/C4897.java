package p411;

import android.os.Process;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;

/* renamed from: ﹳˎ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4897 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f18269;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final String f18268 = AbstractC4901.m9703(UUID.randomUUID().toString() + System.currentTimeMillis());

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final AtomicLong f18267 = new AtomicLong(0);

    public C4897() {
        long time = new Date().getTime();
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt((int) (time / 1000));
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        byte[] array = allocate.array();
        byte b = array[0];
        byte b2 = array[1];
        byte b3 = array[2];
        byte b4 = array[3];
        byte[] m9695 = m9695(time % 1000);
        byte b5 = m9695[0];
        byte b6 = m9695[1];
        byte[] m96952 = m9695(f18267.incrementAndGet());
        byte b7 = m96952[0];
        byte b8 = m96952[1];
        byte[] m96953 = m9695(Integer.valueOf(Process.myPid()).shortValue());
        String m9701 = AbstractC4901.m9701(new byte[]{b, b2, b3, b4, b5, b6, b7, b8, m96953[0], m96953[1]});
        Locale locale = Locale.US;
        this.f18269 = String.format(locale, "%s%s%s%s", m9701.substring(0, 12), m9701.substring(12, 16), m9701.subSequence(16, 20), f18268.substring(0, 12)).toUpperCase(locale);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static byte[] m9695(long j) {
        ByteBuffer allocate = ByteBuffer.allocate(2);
        allocate.putShort((short) j);
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        return allocate.array();
    }

    public final String toString() {
        return this.f18269;
    }
}
