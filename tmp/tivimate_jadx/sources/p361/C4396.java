package p361;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import p010.AbstractC0844;
import p013.C0907;
import p035.AbstractC1220;
import p081.C1718;
import p164.C2571;
import p164.C2586;
import p164.C2599;
import p164.InterfaceC2592;
import p208.C2950;
import p223.C3056;
import p307.AbstractC3740;
import p329.InterfaceC4104;
import p394.AbstractC4710;
import p394.AbstractC4712;
import p430.AbstractC5096;
import p430.AbstractC5099;
import p452.C5366;
import ʽˋ.ـˆ;
import ˈˊ.ˉˆ;

/* renamed from: ᵔᐧ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4396 implements Closeable {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final Logger f16351 = Logger.getLogger(AbstractC4398.class.getName());

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C4377 f16352;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC2592 f16353;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C4392 f16354;

    public C4396(InterfaceC2592 interfaceC2592) {
        this.f16353 = interfaceC2592;
        C4392 c4392 = new C4392(interfaceC2592);
        this.f16354 = c4392;
        this.f16352 = new C4377(c4392);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f16353.close();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m8890(boolean z, C4382 c4382) {
        int readInt;
        int i = 0;
        try {
            this.f16353.mo5802(9L);
            int m9439 = AbstractC4710.m9439(this.f16353);
            if (m9439 > 16384) {
                throw new IOException(AbstractC3740.m7932(m9439, "FRAME_SIZE_ERROR: "));
            }
            int readByte = this.f16353.readByte() & 255;
            byte readByte2 = this.f16353.readByte();
            int i2 = readByte2 & 255;
            int readInt2 = this.f16353.readInt();
            int i3 = Integer.MAX_VALUE & readInt2;
            if (readByte != 8) {
                Logger logger = f16351;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(AbstractC4398.m8898(true, i3, m9439, readByte, i2));
                }
            }
            if (z && readByte != 4) {
                throw new IOException("Expected a SETTINGS frame but was " + AbstractC4398.m8899(readByte));
            }
            switch (readByte) {
                case 0:
                    m8895(c4382, m9439, i2, i3);
                    return true;
                case 1:
                    m8894(c4382, m9439, i2, i3);
                    return true;
                case 2:
                    if (m9439 != 5) {
                        throw new IOException(AbstractC1220.m3773(m9439, "TYPE_PRIORITY length: ", " != 5"));
                    }
                    if (i3 == 0) {
                        throw new IOException("TYPE_PRIORITY streamId == 0");
                    }
                    InterfaceC2592 interfaceC2592 = this.f16353;
                    interfaceC2592.readInt();
                    interfaceC2592.readByte();
                    return true;
                case 3:
                    if (m9439 != 4) {
                        throw new IOException(AbstractC1220.m3773(m9439, "TYPE_RST_STREAM length: ", " != 4"));
                    }
                    if (i3 == 0) {
                        throw new IOException("TYPE_RST_STREAM streamId == 0");
                    }
                    int readInt3 = this.f16353.readInt();
                    int[] m3019 = AbstractC0844.m3019(14);
                    int length = m3019.length;
                    int i4 = 0;
                    while (true) {
                        if (i4 < length) {
                            int i5 = m3019[i4];
                            if (AbstractC0844.m3018(i5) == readInt3) {
                                i = i5;
                            } else {
                                i4++;
                            }
                        }
                    }
                    if (i == 0) {
                        throw new IOException(AbstractC3740.m7932(readInt3, "TYPE_RST_STREAM unexpected error code: "));
                    }
                    C4390 c4390 = c4382.f16273;
                    if (i3 == 0 || (readInt2 & 1) != 0) {
                        C4373 m8887 = c4390.m8887(i3);
                        if (m8887 != null) {
                            m8887.m8846(i);
                        }
                        return true;
                    }
                    C5366.m10764(c4390.f16325, c4390.f16305 + '[' + i3 + "] onReset", new C4380(c4390, i3, i));
                    return true;
                case 4:
                    InterfaceC2592 interfaceC25922 = this.f16353;
                    if (i3 != 0) {
                        throw new IOException("TYPE_SETTINGS streamId != 0");
                    }
                    if ((readByte2 & 1) != 0) {
                        if (m9439 != 0) {
                            throw new IOException("FRAME_SIZE_ERROR ack frame should be empty!");
                        }
                        return true;
                    }
                    if (m9439 % 6 != 0) {
                        throw new IOException(AbstractC3740.m7932(m9439, "TYPE_SETTINGS length % 6 != 0: "));
                    }
                    C4393 c4393 = new C4393();
                    C1718 c1718 = ˉˆ.ᴵᵔ(ˉˆ.ˉٴ(0, m9439), 6);
                    int i6 = c1718.f7020;
                    int i7 = c1718.f7021;
                    int i8 = c1718.f7019;
                    if ((i8 > 0 && i6 <= i7) || (i8 < 0 && i7 <= i6)) {
                        while (true) {
                            short readShort = interfaceC25922.readShort();
                            byte[] bArr = AbstractC4710.f17800;
                            int i9 = readShort & 65535;
                            readInt = interfaceC25922.readInt();
                            if (i9 != 2) {
                                if (i9 != 4) {
                                    if (i9 == 5 && (readInt < 16384 || readInt > 16777215)) {
                                    }
                                } else if (readInt < 0) {
                                    throw new IOException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1");
                                }
                            } else if (readInt != 0 && readInt != 1) {
                                throw new IOException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1");
                            }
                            c4393.m8888(i9, readInt);
                            if (i6 != i7) {
                                i6 += i8;
                            }
                        }
                        throw new IOException(AbstractC3740.m7932(readInt, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "));
                    }
                    C4390 c43902 = c4382.f16273;
                    C5366.m10764(c43902.f16313, AbstractC1220.m3775(new StringBuilder(), c43902.f16305, " applyAndAckSettings"), new ـˆ(c4382, 19, c4393));
                    return true;
                case 5:
                    m8892(c4382, m9439, i2, i3);
                    return true;
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    m8891(c4382, m9439, i2, i3);
                    return true;
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    m8893(c4382, m9439, i3);
                    return true;
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    try {
                        if (m9439 != 4) {
                            throw new IOException("TYPE_WINDOW_UPDATE length !=4: " + m9439);
                        }
                        long readInt4 = 2147483647L & this.f16353.readInt();
                        if (readInt4 == 0) {
                            throw new IOException("windowSizeIncrement was 0");
                        }
                        Logger logger2 = f16351;
                        if (logger2.isLoggable(Level.FINE)) {
                            logger2.fine(AbstractC4398.m8897(i3, m9439, readInt4, true));
                        }
                        if (i3 == 0) {
                            C4390 c43903 = c4382.f16273;
                            synchronized (c43903) {
                                c43903.f16328 += readInt4;
                                c43903.notifyAll();
                            }
                            return true;
                        }
                        C4373 m8886 = c4382.f16273.m8886(i3);
                        if (m8886 != null) {
                            synchronized (m8886) {
                                m8886.f16237 += readInt4;
                                if (readInt4 > 0) {
                                    m8886.notifyAll();
                                }
                            }
                            return true;
                        }
                        return true;
                    } catch (Exception e) {
                        f16351.fine(AbstractC4398.m8898(true, i3, m9439, 8, i2));
                        throw e;
                    }
                default:
                    this.f16353.skip(m9439);
                    return true;
            }
        } catch (EOFException unused) {
            return false;
        }
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final void m8891(C4382 c4382, int i, int i2, int i3) {
        if (i != 8) {
            throw new IOException(AbstractC3740.m7932(i, "TYPE_PING length != 8: "));
        }
        if (i3 != 0) {
            throw new IOException("TYPE_PING streamId != 0");
        }
        int readInt = this.f16353.readInt();
        int readInt2 = this.f16353.readInt();
        if (!((i2 & 1) != 0)) {
            C5366.m10764(c4382.f16273.f16313, AbstractC1220.m3775(new StringBuilder(), c4382.f16273.f16305, " ping"), new C4391(c4382.f16273, readInt, readInt2, 1));
            return;
        }
        C4390 c4390 = c4382.f16273;
        synchronized (c4390) {
            try {
                if (readInt == 1) {
                    c4390.f16326++;
                } else if (readInt == 2) {
                    c4390.f16327++;
                } else if (readInt == 3) {
                    c4390.notifyAll();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m8892(C4382 c4382, int i, int i2, int i3) {
        int i4;
        if (i3 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
        }
        if ((i2 & 8) != 0) {
            byte readByte = this.f16353.readByte();
            byte[] bArr = AbstractC4710.f17800;
            i4 = readByte & 255;
        } else {
            i4 = 0;
        }
        int readInt = this.f16353.readInt() & Integer.MAX_VALUE;
        List m8896 = m8896(AbstractC4376.m8854(i - 4, i2, i4), i4, i2, i3);
        C4390 c4390 = c4382.f16273;
        synchronized (c4390) {
            if (c4390.f16307.contains(Integer.valueOf(readInt))) {
                c4390.m8885(readInt, 2);
                return;
            }
            c4390.f16307.add(Integer.valueOf(readInt));
            C5366.m10764(c4390.f16325, c4390.f16305 + '[' + readInt + "] onRequest", new C4380(c4390, readInt, m8896));
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m8893(C4382 c4382, int i, int i2) {
        int i3;
        Object[] array;
        if (i < 8) {
            throw new IOException(AbstractC3740.m7932(i, "TYPE_GOAWAY length < 8: "));
        }
        if (i2 != 0) {
            throw new IOException("TYPE_GOAWAY streamId != 0");
        }
        int readInt = this.f16353.readInt();
        int readInt2 = this.f16353.readInt();
        int i4 = i - 8;
        int[] m3019 = AbstractC0844.m3019(14);
        int length = m3019.length;
        int i5 = 0;
        while (true) {
            if (i5 >= length) {
                i3 = 0;
                break;
            }
            i3 = m3019[i5];
            if (AbstractC0844.m3018(i3) == readInt2) {
                break;
            } else {
                i5++;
            }
        }
        if (i3 == 0) {
            throw new IOException(AbstractC3740.m7932(readInt2, "TYPE_GOAWAY unexpected error code: "));
        }
        C2571 c2571 = C2571.f9765;
        if (i4 > 0) {
            c2571 = this.f16353.mo5799(i4);
        }
        c2571.mo5749();
        C4390 c4390 = c4382.f16273;
        synchronized (c4390) {
            array = c4390.f16321.values().toArray(new C4373[0]);
            c4390.f16314 = true;
        }
        for (C4373 c4373 : (C4373[]) array) {
            if (c4373.f16242 > readInt && c4373.m8849()) {
                c4373.m8846(8);
                c4382.f16273.m8887(c4373.f16242);
            }
        }
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m8894(C4382 c4382, int i, int i2, int i3) {
        if (i3 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
        }
        int i4 = 0;
        boolean z = (i2 & 1) != 0;
        if ((i2 & 8) != 0) {
            byte readByte = this.f16353.readByte();
            byte[] bArr = AbstractC4710.f17800;
            i4 = readByte & 255;
        }
        if ((i2 & 32) != 0) {
            InterfaceC2592 interfaceC2592 = this.f16353;
            interfaceC2592.readInt();
            interfaceC2592.readByte();
            byte[] bArr2 = AbstractC4710.f17800;
            i -= 5;
        }
        List m8896 = m8896(AbstractC4376.m8854(i, i2, i4), i4, i2, i3);
        C4390 c4390 = c4382.f16273;
        if (i3 != 0 && (i3 & 1) == 0) {
            C5366.m10764(c4390.f16325, c4390.f16305 + '[' + i3 + "] onHeaders", new C4380(c4390, i3, m8896, z));
            return;
        }
        synchronized (c4390) {
            C4373 m8886 = c4390.m8886(i3);
            if (m8886 != null) {
                m8886.m8844(AbstractC4712.m9448(m8896), z);
                return;
            }
            if (c4390.f16314) {
                return;
            }
            if (i3 <= c4390.f16310) {
                return;
            }
            if (i3 % 2 == c4390.f16323 % 2) {
                return;
            }
            C4373 c4373 = new C4373(i3, c4390, false, z, AbstractC4712.m9448(m8896));
            c4390.f16310 = i3;
            c4390.f16321.put(Integer.valueOf(i3), c4373);
            C5366.m10764(c4390.f16320.m10761(), c4390.f16305 + '[' + i3 + "] onStream", new ـˆ(c4390, 18, c4373));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m8895(C4382 c4382, int i, int i2, final int i3) {
        int i4;
        boolean z;
        boolean z2;
        boolean z3;
        if (i3 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_DATA streamId == 0");
        }
        final boolean z4 = (i2 & 1) != 0;
        if ((i2 & 32) != 0) {
            throw new IOException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA");
        }
        if ((i2 & 8) != 0) {
            byte readByte = this.f16353.readByte();
            byte[] bArr = AbstractC4710.f17800;
            i4 = readByte & 255;
        } else {
            i4 = 0;
        }
        final int m8854 = AbstractC4376.m8854(i, i2, i4);
        InterfaceC2592 interfaceC2592 = this.f16353;
        final C4390 c4390 = c4382.f16273;
        if (i3 == 0 || (i3 & 1) != 0) {
            C4373 m8886 = c4390.m8886(i3);
            if (m8886 == null) {
                c4382.f16273.m8885(i3, 2);
                long j = m8854;
                c4382.f16273.m8880(j);
                interfaceC2592.skip(j);
            } else {
                TimeZone timeZone = AbstractC4712.f17804;
                C4384 c4384 = m8886.f16240;
                long j2 = m8854;
                c4384.getClass();
                long j3 = j2;
                while (true) {
                    if (j3 <= 0) {
                        z = z4;
                        C4373 c4373 = c4384.f16285;
                        TimeZone timeZone2 = AbstractC4712.f17804;
                        c4373.f16241.m8880(j2);
                        c4384.f16285.f16241.f16317.getClass();
                        break;
                    }
                    synchronized (c4384.f16285) {
                        z2 = c4384.f16286;
                        z = z4;
                        z3 = c4384.f16284.f9835 + j3 > c4384.f16283;
                    }
                    if (z3) {
                        interfaceC2592.skip(j3);
                        c4384.f16285.m8848(4);
                        break;
                    }
                    if (z2) {
                        interfaceC2592.skip(j3);
                        break;
                    }
                    long mo5763 = interfaceC2592.mo5763(c4384.f16282, j3);
                    if (mo5763 == -1) {
                        throw new EOFException();
                    }
                    j3 -= mo5763;
                    C4373 c43732 = c4384.f16285;
                    synchronized (c43732) {
                        try {
                            if (c4384.f16287) {
                                c4384.f16282.m5836();
                            } else {
                                C2599 c2599 = c4384.f16284;
                                boolean z5 = c2599.f9835 == 0;
                                c2599.m5834(c4384.f16282);
                                if (z5) {
                                    c43732.notifyAll();
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    z4 = z;
                }
                if (z) {
                    m8886.m8844(C2950.f11241, true);
                }
            }
        } else {
            final ?? obj = new Object();
            long j4 = m8854;
            interfaceC2592.mo5802(j4);
            interfaceC2592.mo5763(obj, j4);
            C5366.m10764(c4390.f16325, c4390.f16305 + '[' + i3 + "] onData", new InterfaceC4104(i3, obj, m8854, z4) { // from class: ᵔᐧ.ʼˎ

                /* renamed from: ʽʽ, reason: contains not printable characters */
                public final /* synthetic */ C2599 f16246;

                /* renamed from: ˈٴ, reason: contains not printable characters */
                public final /* synthetic */ int f16248;

                /* renamed from: ᴵˊ, reason: contains not printable characters */
                public final /* synthetic */ int f16249;

                @Override // p329.InterfaceC4104
                /* renamed from: ʽ */
                public final Object mo716() {
                    C4390 c43902 = C4390.this;
                    int i5 = this.f16249;
                    C2599 c25992 = this.f16246;
                    int i6 = this.f16248;
                    try {
                        c43902.f16324.getClass();
                        c25992.skip(i6);
                        c43902.f16322.m8873(i5, 9);
                        synchronized (c43902) {
                            c43902.f16307.remove(Integer.valueOf(i5));
                        }
                    } catch (IOException unused) {
                    }
                    return C0907.f3832;
                }
            });
        }
        this.f16353.skip(i4);
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final List m8896(int i, int i2, int i3, int i4) {
        C4392 c4392 = this.f16354;
        c4392.f16338 = i;
        c4392.f16337 = i;
        c4392.f16336 = i2;
        c4392.f16333 = i3;
        c4392.f16335 = i4;
        C4377 c4377 = this.f16352;
        C2586 c2586 = c4377.f16250;
        ArrayList arrayList = c4377.f16254;
        while (!c2586.mo5805()) {
            byte readByte = c2586.readByte();
            byte[] bArr = AbstractC4710.f17800;
            int i5 = readByte & 255;
            if (i5 == 128) {
                throw new IOException("index == 0");
            }
            if ((readByte & 128) == 128) {
                int m8857 = c4377.m8857(i5, 127);
                int i6 = m8857 - 1;
                if (i6 >= 0) {
                    C4394[] c4394Arr = AbstractC4385.f16289;
                    if (i6 <= c4394Arr.length - 1) {
                        arrayList.add(c4394Arr[i6]);
                    }
                }
                int length = c4377.f16252 + 1 + (i6 - AbstractC4385.f16289.length);
                if (length >= 0) {
                    C4394[] c4394Arr2 = c4377.f16251;
                    if (length < c4394Arr2.length) {
                        arrayList.add(c4394Arr2[length]);
                    }
                }
                throw new IOException(AbstractC3740.m7932(m8857, "Header index too large "));
            }
            if (i5 == 64) {
                C4394[] c4394Arr3 = AbstractC4385.f16289;
                C2571 m8856 = c4377.m8856();
                AbstractC4385.m8868(m8856);
                c4377.m8855(new C4394(m8856, c4377.m8856()));
            } else if ((readByte & 64) == 64) {
                c4377.m8855(new C4394(c4377.m8858(c4377.m8857(i5, 63) - 1), c4377.m8856()));
            } else if ((readByte & 32) == 32) {
                int m88572 = c4377.m8857(i5, 31);
                c4377.f16255 = m88572;
                if (m88572 < 0 || m88572 > 4096) {
                    throw new IOException("Invalid dynamic table size update " + c4377.f16255);
                }
                int i7 = c4377.f16253;
                if (m88572 < i7) {
                    if (m88572 == 0) {
                        AbstractC5096.m10012(c4377.f16251, null);
                        c4377.f16252 = c4377.f16251.length - 1;
                        c4377.f16256 = 0;
                        c4377.f16253 = 0;
                    } else {
                        c4377.m8859(i7 - m88572);
                    }
                }
            } else if (i5 == 16 || i5 == 0) {
                C4394[] c4394Arr4 = AbstractC4385.f16289;
                C2571 m88562 = c4377.m8856();
                AbstractC4385.m8868(m88562);
                arrayList.add(new C4394(m88562, c4377.m8856()));
            } else {
                arrayList.add(new C4394(c4377.m8858(c4377.m8857(i5, 15) - 1), c4377.m8856()));
            }
        }
        List m10020 = AbstractC5099.m10020(arrayList);
        arrayList.clear();
        return m10020;
    }
}
