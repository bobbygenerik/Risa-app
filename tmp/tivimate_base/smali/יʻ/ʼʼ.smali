.class public final Lיʻ/ʼʼ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴʻ/ﹳٴ;


# static fields
.field public static final ˈ:[B

.field public static final ˑﹳ:Ljava/util/Set;


# instance fields
.field public final ʽ:Lˆـ/ⁱˊ;

.field public final ⁱˊ:Lٴʻ/ʼˎ;

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lיʻ/ʼʼ;->ˈ:[B

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lיʻ/ʼʼ;->ˑﹳ:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lᴵﹳ/ᵎᵔ;Lˆـ/ⁱˊ;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lיʻ/ʼʼ;->ˑﹳ:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lיʻ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-static {p1}, Lᴵﹳ/ᵎᵔ;->ˉٴ(Lᴵﹳ/ᵎᵔ;)Lᴵﹳ/ʿᵢ;

    move-result-object p1

    sget-object v0, Lᴵﹳ/י;->ᴵᵔ:Lᴵﹳ/י;

    invoke-virtual {p1, v0}, Lᴵﹳ/ʿᵢ;->ˆʾ(Lᴵﹳ/י;)V

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object p1

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ˑﹳ()[B

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/ʽ;->יـ([B)Lٴʻ/ʼˎ;

    move-result-object p1

    iput-object p1, p0, Lיʻ/ʼʼ;->ⁱˊ:Lٴʻ/ʼˎ;

    iput-object p2, p0, Lיʻ/ʼʼ;->ʽ:Lˆـ/ⁱˊ;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported DEK key type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Only Tink AEAD key types are supported."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final ⁱˊ([B[B)[B
    .locals 5

    .prologue
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v2, 0x1000

    if-gt v1, v2, :cond_0

    array-length p1, p1

    add-int/lit8 p1, p1, -0x4

    if-gt v1, p1, :cond_0

    new-array p1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lיʻ/ʼʼ;->ʽ:Lˆـ/ⁱˊ;

    sget-object v3, Lיʻ/ʼʼ;->ˈ:[B

    invoke-virtual {v0, p1, v3}, Lˆـ/ⁱˊ;->ⁱˊ([B[B)[B

    move-result-object p1

    iget-object v0, p0, Lיʻ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    array-length v3, p1

    invoke-static {p1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ˈ([BII)Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object p1

    sget-object v2, Lᴵﹳ/ᴵˑ;->ʽʽ:Lᴵﹳ/ᴵˑ;

    sget-object v3, Lᴵﹳ/י;->ᴵᵔ:Lᴵﹳ/י;

    const/4 v4, 0x0

    invoke-static {v0, p1, v2, v3, v4}, Lﹳʽ/ᴵᵔ;->ᵔᵢ(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lᴵﹳ/ᴵˑ;Lᴵﹳ/י;Ljava/lang/Integer;)Lﹳʽ/ᴵᵔ;

    move-result-object p1

    sget-object v0, Lﹳʽ/ﹳᐧ;->ⁱˊ:Lﹳʽ/ﹳᐧ;

    invoke-virtual {v0, p1}, Lﹳʽ/ﹳᐧ;->ﹳٴ(Lﹳʽ/ᴵᵔ;)Lﹳˋ/ʽʽ;

    move-result-object p1

    sget-object v0, Lﹳʽ/ᵔﹳ;->ⁱˊ:Lﹳʽ/ᵔﹳ;

    const-class v2, Lٴʻ/ﹳٴ;

    iget-object v0, v0, Lﹳʽ/ᵔﹳ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳʽ/ʽʽ;

    invoke-virtual {v0, p1, v2}, Lﹳʽ/ʽʽ;->ﹳٴ(Lﹳˋ/ʽʽ;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lٴʻ/ﹳٴ;

    invoke-interface {p1, v1, p2}, Lٴʻ/ﹳٴ;->ⁱˊ([B[B)[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "length of encrypted DEK too large"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p2, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid ciphertext"

    invoke-direct {p2, v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final ﹳٴ([B[B)[B
    .locals 4

    .prologue
    sget-object v0, Lﹳʽ/ﾞʻ;->ⁱˊ:Lﹳʽ/ﾞʻ;

    iget-object v1, p0, Lיʻ/ʼʼ;->ⁱˊ:Lٴʻ/ʼˎ;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lﹳʽ/ﾞʻ;->ⁱˊ(Lٴʻ/ʼˎ;Ljava/lang/Integer;)Lﹳˋ/ʽʽ;

    move-result-object v0

    sget-object v1, Lﹳʽ/ﹳᐧ;->ⁱˊ:Lﹳʽ/ﹳᐧ;

    invoke-virtual {v1, v0}, Lﹳʽ/ﹳᐧ;->ᵎﹶ(Lﹳˋ/ʽʽ;)Lﹳʽ/ˉٴ;

    move-result-object v1

    check-cast v1, Lﹳʽ/ᴵᵔ;

    iget-object v1, v1, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ﾞᴵ()[B

    move-result-object v1

    iget-object v2, p0, Lיʻ/ʼʼ;->ʽ:Lˆـ/ⁱˊ;

    sget-object v3, Lיʻ/ʼʼ;->ˈ:[B

    invoke-virtual {v2, v1, v3}, Lˆـ/ⁱˊ;->ﹳٴ([B[B)[B

    move-result-object v1

    array-length v2, v1

    const/16 v3, 0x1000

    if-gt v2, v3, :cond_0

    sget-object v2, Lﹳʽ/ᵔﹳ;->ⁱˊ:Lﹳʽ/ᵔﹳ;

    iget-object v2, v2, Lﹳʽ/ᵔﹳ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lﹳʽ/ʽʽ;

    const-class v3, Lٴʻ/ﹳٴ;

    invoke-virtual {v2, v0, v3}, Lﹳʽ/ʽʽ;->ﹳٴ(Lﹳˋ/ʽʽ;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lٴʻ/ﹳٴ;

    invoke-interface {v0, p1, p2}, Lٴʻ/ﹳٴ;->ﹳٴ([B[B)[B

    move-result-object p1

    array-length p2, v1

    add-int/lit8 p2, p2, 0x4

    array-length v0, p1

    add-int/2addr p2, v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    array-length v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "length of encrypted DEK too large"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
