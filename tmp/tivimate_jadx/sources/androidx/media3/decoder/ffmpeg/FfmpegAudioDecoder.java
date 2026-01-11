package androidx.media3.decoder.ffmpeg;

import androidx.media3.decoder.DecoderException;
import androidx.media3.decoder.SimpleDecoderOutputBuffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import p055.C1495;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3732;
import p421.AbstractC4997;
import p421.AbstractC5001;
import p421.C4996;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class FfmpegAudioDecoder extends AbstractC4997 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public volatile int f1145;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final byte[] f1146;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public volatile int f1147;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final String f1148;

    /* renamed from: ˏי, reason: contains not printable characters */
    public boolean f1149;

    /* renamed from: יـ, reason: contains not printable characters */
    public long f1150;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final int f1151;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public int f1152;

    public FfmpegAudioDecoder(int i, C1495 c1495, boolean z) {
        super(new C4996[16], new SimpleDecoderOutputBuffer[16]);
        byte[] bArr;
        byte[] bArr2;
        if (!FfmpegLibrary.m752()) {
            throw new Exception("Failed to load decoder native libraries.");
        }
        String str = c1495.f5930;
        str.getClass();
        String m755 = FfmpegLibrary.m755(str);
        m755.getClass();
        this.f1148 = m755;
        List list = c1495.f5934;
        char c = 65535;
        switch (str.hashCode()) {
            case -1003765268:
                if (str.equals("audio/vorbis")) {
                    c = 0;
                    break;
                }
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    c = 1;
                    break;
                }
                break;
            case 1504470054:
                if (str.equals("audio/alac")) {
                    c = 2;
                    break;
                }
                break;
            case 1504891608:
                if (str.equals("audio/opus")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                byte[] bArr3 = (byte[]) list.get(0);
                byte[] bArr4 = (byte[]) list.get(1);
                byte[] bArr5 = new byte[bArr3.length + bArr4.length + 6];
                bArr5[0] = (byte) (bArr3.length >> 8);
                bArr5[1] = (byte) (bArr3.length & 255);
                System.arraycopy(bArr3, 0, bArr5, 2, bArr3.length);
                bArr5[bArr3.length + 2] = 0;
                bArr5[bArr3.length + 3] = 0;
                bArr5[bArr3.length + 4] = (byte) (bArr4.length >> 8);
                bArr5[bArr3.length + 5] = (byte) (bArr4.length & 255);
                System.arraycopy(bArr4, 0, bArr5, bArr3.length + 6, bArr4.length);
                bArr = bArr5;
                break;
            case 1:
            case 3:
                bArr2 = (byte[]) list.get(0);
                bArr = bArr2;
                break;
            case 2:
                byte[] bArr6 = (byte[]) list.get(0);
                int length = bArr6.length + 12;
                ByteBuffer allocate = ByteBuffer.allocate(length);
                allocate.putInt(length);
                allocate.putInt(1634492771);
                allocate.putInt(0);
                allocate.put(bArr6, 0, bArr6.length);
                bArr2 = allocate.array();
                bArr = bArr2;
                break;
            default:
                bArr2 = null;
                bArr = bArr2;
                break;
        }
        this.f1146 = bArr;
        this.f1151 = z ? 4 : 2;
        this.f1152 = z ? 131070 : 65535;
        long ffmpegInitialize = ffmpegInitialize(m755, bArr, z, c1495.f5923, c1495.f5916);
        this.f1150 = ffmpegInitialize;
        if (ffmpegInitialize == 0) {
            throw new Exception("Initialization failed.");
        }
        int i2 = this.f18681;
        C4996[] c4996Arr = this.f18679;
        AbstractC3731.m7857(i2 == c4996Arr.length);
        for (C4996 c4996 : c4996Arr) {
            c4996.m9843(i);
        }
    }

    private native int ffmpegDecode(long j, ByteBuffer byteBuffer, int i, SimpleDecoderOutputBuffer simpleDecoderOutputBuffer, ByteBuffer byteBuffer2, int i2);

    private native int ffmpegGetChannelCount(long j);

    private native int ffmpegGetSampleRate(long j);

    private native long ffmpegInitialize(String str, byte[] bArr, boolean z, int i, int i2);

    private native void ffmpegRelease(long j);

    private native long ffmpegReset(long j, byte[] bArr);

    private ByteBuffer growOutputBuffer(SimpleDecoderOutputBuffer simpleDecoderOutputBuffer, int i) {
        this.f1152 = i;
        ByteBuffer byteBuffer = simpleDecoderOutputBuffer.f1144;
        byteBuffer.getClass();
        AbstractC3731.m7849(i >= byteBuffer.limit());
        ByteBuffer order = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        int position = byteBuffer.position();
        byteBuffer.position(0);
        order.put(byteBuffer);
        order.position(position);
        order.limit(i);
        simpleDecoderOutputBuffer.f1144 = order;
        return order;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.decoder.DecoderException, java.lang.Exception] */
    @Override // p421.AbstractC4997
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final DecoderException mo745(Throwable th) {
        return new Exception("Unexpected decode error", th);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final String m746() {
        return "ffmpeg" + FfmpegLibrary.m751() + "-" + this.f1148;
    }

    /* JADX WARN: Type inference failed for: r9v10, types: [androidx.media3.decoder.DecoderException, java.lang.Exception] */
    /* JADX WARN: Type inference failed for: r9v8, types: [androidx.media3.decoder.DecoderException, java.lang.Exception] */
    @Override // p421.AbstractC4997
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final DecoderException mo747(C4996 c4996, AbstractC5001 abstractC5001, boolean z) {
        SimpleDecoderOutputBuffer simpleDecoderOutputBuffer = (SimpleDecoderOutputBuffer) abstractC5001;
        if (z) {
            long ffmpegReset = ffmpegReset(this.f1150, this.f1146);
            this.f1150 = ffmpegReset;
            if (ffmpegReset == 0) {
                return new Exception("Error resetting (see logcat).");
            }
        }
        ByteBuffer byteBuffer = c4996.f18672;
        String str = AbstractC3712.f14481;
        int limit = byteBuffer.limit();
        long j = c4996.f18671;
        int i = this.f1152;
        simpleDecoderOutputBuffer.f18690 = j;
        ByteBuffer byteBuffer2 = simpleDecoderOutputBuffer.f1144;
        if (byteBuffer2 == null || byteBuffer2.capacity() < i) {
            simpleDecoderOutputBuffer.f1144 = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        }
        simpleDecoderOutputBuffer.f1144.position(0);
        simpleDecoderOutputBuffer.f1144.limit(i);
        int ffmpegDecode = ffmpegDecode(this.f1150, byteBuffer, limit, simpleDecoderOutputBuffer, simpleDecoderOutputBuffer.f1144, this.f1152);
        if (ffmpegDecode == -2) {
            return new Exception("Error decoding (see logcat).");
        }
        if (ffmpegDecode == -1) {
            simpleDecoderOutputBuffer.f18692 = true;
            return null;
        }
        if (ffmpegDecode == 0) {
            simpleDecoderOutputBuffer.f18692 = true;
            return null;
        }
        if (!this.f1149) {
            this.f1147 = ffmpegGetChannelCount(this.f1150);
            this.f1145 = ffmpegGetSampleRate(this.f1150);
            if (this.f1145 == 0 && "alac".equals(this.f1148)) {
                this.f1146.getClass();
                C3732 c3732 = new C3732(this.f1146);
                c3732.m7896(this.f1146.length - 4);
                this.f1145 = c3732.m7878();
            }
            this.f1149 = true;
        }
        ByteBuffer byteBuffer3 = simpleDecoderOutputBuffer.f1144;
        byteBuffer3.getClass();
        byteBuffer3.position(0);
        byteBuffer3.limit(ffmpegDecode);
        return null;
    }

    @Override // p421.AbstractC4997
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C4996 mo748() {
        return new C4996(2, FfmpegLibrary.m754());
    }

    @Override // p421.AbstractC4997
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final AbstractC5001 mo749() {
        return new SimpleDecoderOutputBuffer(new C0213(this));
    }

    @Override // p421.AbstractC4997, p421.InterfaceC4995
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo750() {
        super.mo750();
        ffmpegRelease(this.f1150);
        this.f1150 = 0L;
    }
}
