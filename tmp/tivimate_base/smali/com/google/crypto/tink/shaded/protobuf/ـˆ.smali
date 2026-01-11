.class public abstract Lcom/google/crypto/tink/shaded/protobuf/ـˆ;
.super Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;
.source "SourceFile"


# static fields
.field private static final MEMOIZED_SERIALIZED_SIZE_MASK:I = 0x7fffffff

.field private static final MUTABLE_FLAG_MASK:I = -0x80000000

.field static final UNINITIALIZED_HASH_CODE:I = 0x0

.field static final UNINITIALIZED_SERIALIZED_SIZE:I = 0x7fffffff

.field private static defaultInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/crypto/tink/shaded/protobuf/\u0640\u02c6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private memoizedSerializedSize:I

.field protected unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->defaultInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->memoizedHashCode:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->memoizedSerializedSize:I

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ﾞᴵ:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    return-void
.end method

.method public static ʻٴ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Landroidx/datastore/preferences/protobuf/ˆʾ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lcom/google/crypto/tink/shaded/protobuf/ـˆ;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->יـ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object p0

    :try_start_0
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v0

    iget-object v1, p1, Landroidx/datastore/preferences/protobuf/ˆʾ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;

    invoke-direct {v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;-><init>(Landroidx/datastore/preferences/protobuf/ˆʾ;)V

    :goto_0
    invoke-interface {v0, p0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ᵎﹶ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)V

    invoke-interface {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ⁱˊ(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    throw p0

    :cond_1
    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    throw p0

    :cond_2
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    move-exception p0

    iget-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʾˋ:Z

    if-eqz p1, :cond_3

    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, p1

    :cond_3
    throw p0
.end method

.method public static ʽﹳ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;[BLcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lcom/google/crypto/tink/shaded/protobuf/ـˆ;
    .locals 6

    .prologue
    array-length v4, p1

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->יـ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v1

    :try_start_0
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/internal/measurement/ˈʻ;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ﾞᴵ(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/ˈʻ;)V

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ⁱˊ(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    :goto_0
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ᵔᵢ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-object p0

    :catch_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ᵎﹶ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    throw p0

    :cond_1
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception v0

    move-object p0, v0

    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    move-exception v0

    move-object p0, v0

    iget-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʾˋ:Z

    if-eqz p1, :cond_2

    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, p1

    :cond_2
    throw p0
.end method

.method public static final ˉˆ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ˆʾ(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v1, v0, :cond_0

    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ʽ(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ˆʾ(I)Ljava/lang/Object;

    :cond_2
    return v0
.end method

.method public static ˏי(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lcom/google/crypto/tink/shaded/protobuf/ـˆ;
    .locals 3

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ˈٴ:[B

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ᵎﹶ()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->size()I

    move-result p1

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵔᵢ([BIIZ)Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʻٴ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Landroidx/datastore/preferences/protobuf/ˆʾ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ʼˎ;->ⁱˊ(I)V

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ᵔᵢ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-object p0
.end method

.method public static ـˆ(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ᵔﹳ()V

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static ٴﹶ(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/ـˆ;
    .locals 3

    .prologue
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ⁱˊ(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ﾞʻ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    return-object v0
.end method

.method public static varargs ᵔʾ(Ljava/lang/reflect/Method;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static ᵔᵢ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V
    .locals 1

    .prologue
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ˉˆ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;-><init>()V

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v0

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    invoke-interface {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ᵔᵢ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʼᐧ()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ˆʾ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->memoizedHashCode:I

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ˆʾ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->memoizedHashCode:I

    :cond_1
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->memoizedHashCode:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ˆﾞ;->ﹳٴ:[C

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ˆﾞ;->ʽ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʼʼ()Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ˆʾ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᵔᵢ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-object v0
.end method

.method public final ʼˎ()Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ˆʾ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;

    return-object v0
.end method

.method public final ʼᐧ()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->memoizedSerializedSize:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ʾᵎ(I)V
    .locals 2

    .prologue
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->memoizedSerializedSize:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->memoizedSerializedSize:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "serialized size must be non-negative, was "

    invoke-static {p1, v1}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract ˆʾ(I)Ljava/lang/Object;
.end method

.method public bridge synthetic ˈ()Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;
    .locals 1

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ﹳᐧ()Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;

    move-result-object v0

    return-object v0
.end method

.method public final ˉʿ()Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ˆʾ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    return-object v0
.end method

.method public final יـ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ˆʾ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    return-object v0
.end method

.method public final ᵎﹶ(Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;)V
    .locals 2

    .prologue
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v0

    iget-object v1, p1, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˆʾ:Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;

    invoke-direct {v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;)V

    :goto_0
    invoke-interface {v0, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ʼˎ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;)V

    return-void
.end method

.method public final ᵔﹳ()V
    .locals 2

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->memoizedSerializedSize:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->memoizedSerializedSize:I

    return-void
.end method

.method public final ⁱˊ(Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;)I
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʼᐧ()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ˑﹳ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ˑﹳ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_1

    return p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "serialized size must be non-negative, was "

    invoke-static {p1, v1}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->memoizedSerializedSize:I

    const v1, 0x7fffffff

    and-int v2, v0, v1

    if-eq v2, v1, :cond_3

    and-int p1, v0, v1

    return p1

    :cond_3
    if-nez p1, :cond_4

    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ˑﹳ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)I

    move-result p1

    goto :goto_1

    :cond_4
    invoke-interface {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ˑﹳ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)I

    move-result p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʾᵎ(I)V

    return p1
.end method

.method public bridge synthetic ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;
    .locals 1

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ﾞʻ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳᐧ()Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ˆʾ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;

    return-object v0
.end method

.method public final ﾞʻ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ˆʾ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    return-object v0
.end method
