.class public final Lˈʾ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ˈ;


# static fields
.field public static final ʼˎ:Lˆˉ/ﹳٴ;

.field public static final ᵎﹶ:Lʿˑ/ⁱˊ;

.field public static final ᵔᵢ:Lʿˑ/ⁱˊ;

.field public static final ﾞᴵ:Ljava/nio/charset/Charset;


# instance fields
.field public final ʽ:Ljava/util/HashMap;

.field public final ˈ:Lʿˑ/ʽ;

.field public final ˑﹳ:Lˈʾ/ᵎﹶ;

.field public final ⁱˊ:Ljava/util/HashMap;

.field public ﹳٴ:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lˈʾ/ˑﹳ;->ﾞᴵ:Ljava/nio/charset/Charset;

    new-instance v0, Lˈʾ/ﹳٴ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lˈʾ/ﹳٴ;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-class v2, Lˈʾ/ˈ;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lʿˑ/ⁱˊ;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "key"

    invoke-direct {v0, v3, v1}, Lʿˑ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lˈʾ/ˑﹳ;->ᵎﹶ:Lʿˑ/ⁱˊ;

    new-instance v0, Lˈʾ/ﹳٴ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lˈʾ/ﹳٴ;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lʿˑ/ⁱˊ;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "value"

    invoke-direct {v0, v2, v1}, Lʿˑ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lˈʾ/ˑﹳ;->ᵔᵢ:Lʿˑ/ⁱˊ;

    new-instance v0, Lˆˉ/ﹳٴ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lˆˉ/ﹳٴ;-><init>(I)V

    sput-object v0, Lˈʾ/ˑﹳ;->ʼˎ:Lˆˉ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(Ljava/io/ByteArrayOutputStream;Ljava/util/HashMap;Ljava/util/HashMap;Lʿˑ/ʽ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˈʾ/ᵎﹶ;

    invoke-direct {v0, p0}, Lˈʾ/ᵎﹶ;-><init>(Lˈʾ/ˑﹳ;)V

    iput-object v0, p0, Lˈʾ/ˑﹳ;->ˑﹳ:Lˈʾ/ᵎﹶ;

    iput-object p1, p0, Lˈʾ/ˑﹳ;->ﹳٴ:Ljava/io/OutputStream;

    iput-object p2, p0, Lˈʾ/ˑﹳ;->ⁱˊ:Ljava/util/HashMap;

    iput-object p3, p0, Lˈʾ/ˑﹳ;->ʽ:Ljava/util/HashMap;

    iput-object p4, p0, Lˈʾ/ˑﹳ;->ˈ:Lʿˑ/ʽ;

    return-void
.end method

.method public static ˆʾ(Lʿˑ/ⁱˊ;)I
    .locals 1

    .prologue
    const-class v0, Lˈʾ/ˈ;

    iget-object p0, p0, Lʿˑ/ⁱˊ;->ⁱˊ:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    check-cast p0, Lˈʾ/ˈ;

    if-eqz p0, :cond_0

    check-cast p0, Lˈʾ/ﹳٴ;

    iget p0, p0, Lˈʾ/ﹳٴ;->ﹳٴ:I

    return p0

    :cond_0
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    const-string v0, "Field has no @Protobuf config"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final ʼˎ(Lʿˑ/ʽ;Lʿˑ/ⁱˊ;Ljava/lang/Object;Z)V
    .locals 5

    .prologue
    new-instance v0, Lˈʾ/ⁱˊ;

    invoke-direct {v0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lˈʾ/ⁱˊ;->ʾˋ:J

    :try_start_0
    iget-object v3, p0, Lˈʾ/ˑﹳ;->ﹳٴ:Ljava/io/OutputStream;

    iput-object v0, p0, Lˈʾ/ˑﹳ;->ﹳٴ:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1, p3, p0}, Lʿˑ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v3, p0, Lˈʾ/ˑﹳ;->ﹳٴ:Ljava/io/OutputStream;

    iget-wide v3, v0, Lˈʾ/ⁱˊ;->ʾˋ:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    if-eqz p4, :cond_0

    cmp-long p4, v3, v1

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lˈʾ/ˑﹳ;->ˆʾ(Lʿˑ/ⁱˊ;)I

    move-result p2

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    invoke-virtual {p0, p2}, Lˈʾ/ˑﹳ;->ٴﹶ(I)V

    invoke-virtual {p0, v3, v4}, Lˈʾ/ˑﹳ;->ﾞʻ(J)V

    invoke-interface {p1, p3, p0}, Lʿˑ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iput-object v3, p0, Lˈʾ/ˑﹳ;->ﹳٴ:Ljava/io/OutputStream;

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method public final ʽ(Lʿˑ/ⁱˊ;D)Lʿˑ/ˈ;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lˈʾ/ˑﹳ;->ˈ(Lʿˑ/ⁱˊ;DZ)V

    return-object p0
.end method

.method public final ˈ(Lʿˑ/ⁱˊ;DZ)V
    .locals 2

    .prologue
    if-eqz p4, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double p4, p2, v0

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lˈʾ/ˑﹳ;->ˆʾ(Lʿˑ/ⁱˊ;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lˈʾ/ˑﹳ;->ٴﹶ(I)V

    iget-object p1, p0, Lˈʾ/ˑﹳ;->ﹳٴ:Ljava/io/OutputStream;

    const/16 p4, 0x8

    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final ˑﹳ(Lʿˑ/ⁱˊ;IZ)V
    .locals 0

    .prologue
    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-class p3, Lˈʾ/ˈ;

    iget-object p1, p1, Lʿˑ/ⁱˊ;->ⁱˊ:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    check-cast p1, Lˈʾ/ˈ;

    if-eqz p1, :cond_1

    check-cast p1, Lˈʾ/ﹳٴ;

    iget p1, p1, Lˈʾ/ﹳٴ;->ﹳٴ:I

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lˈʾ/ˑﹳ;->ٴﹶ(I)V

    invoke-virtual {p0, p2}, Lˈʾ/ˑﹳ;->ٴﹶ(I)V

    return-void

    :cond_1
    new-instance p1, Lcom/google/firebase/encoders/EncodingException;

    const-string p2, "Field has no @Protobuf config"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ٴﹶ(I)V
    .locals 4

    .prologue
    :goto_0
    and-int/lit8 v0, p1, -0x80

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˈʾ/ˑﹳ;->ﹳٴ:Ljava/io/OutputStream;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lˈʾ/ˑﹳ;->ﹳٴ:Ljava/io/OutputStream;

    and-int/lit8 p1, p1, 0x7f

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final ᵎﹶ(Lʿˑ/ⁱˊ;Z)Lʿˑ/ˈ;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lˈʾ/ˑﹳ;->ˑﹳ(Lʿˑ/ⁱˊ;IZ)V

    return-object p0
.end method

.method public final ᵔᵢ(Lʿˑ/ⁱˊ;Ljava/lang/Object;Z)V
    .locals 3

    .prologue
    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {p1}, Lˈʾ/ˑﹳ;->ˆʾ(Lʿˑ/ⁱˊ;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lˈʾ/ˑﹳ;->ٴﹶ(I)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lˈʾ/ˑﹳ;->ﾞᴵ:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p2, p1

    invoke-virtual {p0, p2}, Lˈʾ/ˑﹳ;->ٴﹶ(I)V

    iget-object p2, p0, Lˈʾ/ˑﹳ;->ﹳٴ:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_2
    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p1, p3, v1}, Lˈʾ/ˑﹳ;->ᵔᵢ(Lʿˑ/ⁱˊ;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_3
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    sget-object v0, Lˈʾ/ˑﹳ;->ʼˎ:Lˆˉ/ﹳٴ;

    invoke-virtual {p0, v0, p1, p3, v1}, Lˈʾ/ˑﹳ;->ʼˎ(Lʿˑ/ʽ;Lʿˑ/ⁱˊ;Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_4
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_5

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lˈʾ/ˑﹳ;->ˈ(Lʿˑ/ⁱˊ;DZ)V

    return-void

    :cond_5
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_7

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    if-eqz p3, :cond_6

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_6

    goto/16 :goto_2

    :cond_6
    invoke-static {p1}, Lˈʾ/ˑﹳ;->ˆʾ(Lʿˑ/ⁱˊ;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lˈʾ/ˑﹳ;->ٴﹶ(I)V

    iget-object p1, p0, Lˈʾ/ˑﹳ;->ﹳٴ:Ljava/io/OutputStream;

    const/4 p3, 0x4

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_7
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_a

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    if-eqz p3, :cond_8

    const-wide/16 p2, 0x0

    cmp-long p2, v0, p2

    if-nez p2, :cond_8

    goto :goto_2

    :cond_8
    const-class p2, Lˈʾ/ˈ;

    iget-object p1, p1, Lʿˑ/ⁱˊ;->ⁱˊ:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    check-cast p1, Lˈʾ/ˈ;

    if-eqz p1, :cond_9

    check-cast p1, Lˈʾ/ﹳٴ;

    iget p1, p1, Lˈʾ/ﹳٴ;->ﹳٴ:I

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lˈʾ/ˑﹳ;->ٴﹶ(I)V

    invoke-virtual {p0, v0, v1}, Lˈʾ/ˑﹳ;->ﾞʻ(J)V

    return-void

    :cond_9
    new-instance p1, Lcom/google/firebase/encoders/EncodingException;

    const-string p2, "Field has no @Protobuf config"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lˈʾ/ˑﹳ;->ˑﹳ(Lʿˑ/ⁱˊ;IZ)V

    return-void

    :cond_b
    instance-of v0, p2, [B

    if-eqz v0, :cond_e

    check-cast p2, [B

    if-eqz p3, :cond_d

    array-length p3, p2

    if-nez p3, :cond_d

    :cond_c
    :goto_2
    return-void

    :cond_d
    invoke-static {p1}, Lˈʾ/ˑﹳ;->ˆʾ(Lʿˑ/ⁱˊ;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lˈʾ/ˑﹳ;->ٴﹶ(I)V

    array-length p1, p2

    invoke-virtual {p0, p1}, Lˈʾ/ˑﹳ;->ٴﹶ(I)V

    iget-object p1, p0, Lˈʾ/ˑﹳ;->ﹳٴ:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_e
    iget-object v0, p0, Lˈʾ/ˑﹳ;->ⁱˊ:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʿˑ/ʽ;

    if-eqz v0, :cond_f

    invoke-virtual {p0, v0, p1, p2, p3}, Lˈʾ/ˑﹳ;->ʼˎ(Lʿˑ/ʽ;Lʿˑ/ⁱˊ;Ljava/lang/Object;Z)V

    return-void

    :cond_f
    iget-object v0, p0, Lˈʾ/ˑﹳ;->ʽ:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʿˑ/ˑﹳ;

    if-eqz v0, :cond_10

    iget-object v2, p0, Lˈʾ/ˑﹳ;->ˑﹳ:Lˈʾ/ᵎﹶ;

    iput-boolean v1, v2, Lˈʾ/ᵎﹶ;->ﹳٴ:Z

    iput-object p1, v2, Lˈʾ/ᵎﹶ;->ʽ:Lʿˑ/ⁱˊ;

    iput-boolean p3, v2, Lˈʾ/ᵎﹶ;->ⁱˊ:Z

    invoke-interface {v0, p2, v2}, Lʿˑ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_10
    instance-of v0, p2, Lˆ/ʽ;

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    check-cast p2, Lˆ/ʽ;

    iget p2, p2, Lˆ/ʽ;->ʾˋ:I

    invoke-virtual {p0, p1, p2, v1}, Lˈʾ/ˑﹳ;->ˑﹳ(Lʿˑ/ⁱˊ;IZ)V

    return-void

    :cond_11
    instance-of v0, p2, Ljava/lang/Enum;

    if-eqz v0, :cond_12

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p0, p1, p2, v1}, Lˈʾ/ˑﹳ;->ˑﹳ(Lʿˑ/ⁱˊ;IZ)V

    return-void

    :cond_12
    iget-object v0, p0, Lˈʾ/ˑﹳ;->ˈ:Lʿˑ/ʽ;

    invoke-virtual {p0, v0, p1, p2, p3}, Lˈʾ/ˑﹳ;->ʼˎ(Lʿˑ/ʽ;Lʿˑ/ⁱˊ;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final ⁱˊ(Lʿˑ/ⁱˊ;J)Lʿˑ/ˈ;
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-class v0, Lˈʾ/ˈ;

    iget-object p1, p1, Lʿˑ/ⁱˊ;->ⁱˊ:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    check-cast p1, Lˈʾ/ˈ;

    if-eqz p1, :cond_1

    check-cast p1, Lˈʾ/ﹳٴ;

    iget p1, p1, Lˈʾ/ﹳٴ;->ﹳٴ:I

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lˈʾ/ˑﹳ;->ٴﹶ(I)V

    invoke-virtual {p0, p2, p3}, Lˈʾ/ˑﹳ;->ﾞʻ(J)V

    return-object p0

    :cond_1
    new-instance p1, Lcom/google/firebase/encoders/EncodingException;

    const-string p2, "Field has no @Protobuf config"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳٴ(Lʿˑ/ⁱˊ;I)Lʿˑ/ˈ;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lˈʾ/ˑﹳ;->ˑﹳ(Lʿˑ/ⁱˊ;IZ)V

    return-object p0
.end method

.method public final ﾞʻ(J)V
    .locals 4

    .prologue
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˈʾ/ˑﹳ;->ﹳٴ:Ljava/io/OutputStream;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lˈʾ/ˑﹳ;->ﹳٴ:Ljava/io/OutputStream;

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x7f

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lˈʾ/ˑﹳ;->ᵔᵢ(Lʿˑ/ⁱˊ;Ljava/lang/Object;Z)V

    return-object p0
.end method
