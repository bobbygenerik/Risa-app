.class public final Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;


# instance fields
.field public final ⁱˊ:Lj$/util/concurrent/ConcurrentHashMap;

.field public final ﹳٴ:Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ⁱˊ:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ﹳٴ:Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;
    .locals 9

    .prologue
    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ⁱˊ:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ﹳٴ:Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    const-class v2, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, v1, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ˊʻ;

    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˊʻ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/ﹳـ;

    move-result-object v3

    iget v1, v3, Lcom/google/crypto/tink/shaded/protobuf/ﹳـ;->ˈ:I

    iget-object v4, v3, Lcom/google/crypto/tink/shaded/protobuf/ﹳـ;->ﹳٴ:Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;

    const/4 v5, 0x2

    and-int/2addr v1, v5

    const-string v6, "Protobuf runtime is not correctly loaded."

    if-ne v1, v5, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʿᵢ;

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/ᵔﹳ;->ﹳٴ:Lcom/google/crypto/tink/shaded/protobuf/ʼᐧ;

    new-instance v3, Lcom/google/crypto/tink/shaded/protobuf/ˈʿ;

    invoke-direct {v3, v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/ˈʿ;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ˉـ;Lcom/google/crypto/tink/shaded/protobuf/ʼᐧ;Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;)V

    goto/16 :goto_2

    :cond_2
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ⁱˊ:Lcom/google/crypto/tink/shaded/protobuf/ˉـ;

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/ᵔﹳ;->ⁱˊ:Lcom/google/crypto/tink/shaded/protobuf/ʼᐧ;

    if-eqz v2, :cond_3

    new-instance v3, Lcom/google/crypto/tink/shaded/protobuf/ˈʿ;

    invoke-direct {v3, v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/ˈʿ;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ˉـ;Lcom/google/crypto/tink/shaded/protobuf/ʼᐧ;Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;)V

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    move-object v1, v4

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ˋᵔ;->ⁱˊ:Lcom/google/crypto/tink/shaded/protobuf/ˑٴ;

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ˈٴ;->ⁱˊ:Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;

    sget-object v6, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʿᵢ;

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/ﹳـ;->ﹳٴ()I

    move-result v7

    invoke-static {v7}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v7

    if-eq v7, v2, :cond_5

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᵔﹳ;->ﹳٴ:Lcom/google/crypto/tink/shaded/protobuf/ʼᐧ;

    :cond_5
    move-object v7, v1

    sget-object v8, Lcom/google/crypto/tink/shaded/protobuf/ٴʼ;->ⁱˊ:Lcom/google/crypto/tink/shaded/protobuf/ᵎⁱ;

    instance-of v1, v3, Lcom/google/crypto/tink/shaded/protobuf/ﹳـ;

    if-eqz v1, :cond_6

    invoke-static/range {v3 .. v8}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵢˏ(Lcom/google/crypto/tink/shaded/protobuf/ﹳـ;Lcom/google/crypto/tink/shaded/protobuf/ˑٴ;Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;Lcom/google/crypto/tink/shaded/protobuf/ˉـ;Lcom/google/crypto/tink/shaded/protobuf/ʼᐧ;Lcom/google/crypto/tink/shaded/protobuf/ᵎⁱ;)Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;

    move-result-object v3

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔʾ:[I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_7
    move-object v1, v4

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ˋᵔ;->ﹳٴ:Lcom/google/crypto/tink/shaded/protobuf/ˑٴ;

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ˈٴ;->ﹳٴ:Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;

    move-object v7, v6

    sget-object v6, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ⁱˊ:Lcom/google/crypto/tink/shaded/protobuf/ˉـ;

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/ﹳـ;->ﹳٴ()I

    move-result v8

    invoke-static {v8}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v8

    if-eq v8, v2, :cond_8

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᵔﹳ;->ⁱˊ:Lcom/google/crypto/tink/shaded/protobuf/ʼᐧ;

    if-eqz v1, :cond_9

    :cond_8
    move-object v7, v1

    goto :goto_1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    sget-object v8, Lcom/google/crypto/tink/shaded/protobuf/ٴʼ;->ﹳٴ:Lcom/google/crypto/tink/shaded/protobuf/ᵎⁱ;

    instance-of v1, v3, Lcom/google/crypto/tink/shaded/protobuf/ﹳـ;

    if-eqz v1, :cond_b

    invoke-static/range {v3 .. v8}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵢˏ(Lcom/google/crypto/tink/shaded/protobuf/ﹳـ;Lcom/google/crypto/tink/shaded/protobuf/ˑٴ;Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;Lcom/google/crypto/tink/shaded/protobuf/ˉـ;Lcom/google/crypto/tink/shaded/protobuf/ʼᐧ;Lcom/google/crypto/tink/shaded/protobuf/ᵎⁱ;)Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, p1, v3}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    if-eqz p1, :cond_a

    return-object p1

    :cond_a
    return-object v3

    :cond_b
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔʾ:[I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_c
    return-object v1
.end method
