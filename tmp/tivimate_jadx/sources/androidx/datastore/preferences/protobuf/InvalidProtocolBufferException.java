package androidx.datastore.preferences.protobuf;

import java.io.IOException;

/* loaded from: classes.dex */
public class InvalidProtocolBufferException extends IOException {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f353;

    /* loaded from: classes.dex */
    public static class InvalidWireTypeException extends InvalidProtocolBufferException {
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.datastore.preferences.protobuf.InvalidProtocolBufferException, java.io.IOException] */
    /* renamed from: ʽ, reason: contains not printable characters */
    public static InvalidProtocolBufferException m139() {
        return new IOException("CodedInputStream encountered a malformed varint.");
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.datastore.preferences.protobuf.InvalidProtocolBufferException, java.io.IOException] */
    /* renamed from: ˈ, reason: contains not printable characters */
    public static InvalidProtocolBufferException m140() {
        return new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.datastore.preferences.protobuf.InvalidProtocolBufferException, java.io.IOException] */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static InvalidProtocolBufferException m141() {
        return new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.datastore.preferences.protobuf.InvalidProtocolBufferException$InvalidWireTypeException, java.io.IOException] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static InvalidWireTypeException m142() {
        return new IOException("Protocol message tag had invalid wire type.");
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.datastore.preferences.protobuf.InvalidProtocolBufferException, java.io.IOException] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static InvalidProtocolBufferException m143() {
        return new IOException("Protocol message had invalid UTF-8.");
    }
}
