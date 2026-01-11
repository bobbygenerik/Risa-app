.class public abstract Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʿᵢ;

.field public static final ⁱˊ:Lcom/google/crypto/tink/shaded/protobuf/ˉـ;

.field public static final ﹳٴ:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.crypto.tink.shaded.protobuf.GeneratedMessage"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :goto_0
    sput-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    :try_start_1
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v1, "com.google.crypto.tink.shaded.protobuf.UnknownFieldSetSchema"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_3
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ˉـ;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v0, v1

    :catchall_2
    :goto_2
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ⁱˊ:Lcom/google/crypto/tink/shaded/protobuf/ˉـ;

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/ʿᵢ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʿᵢ;

    return-void
.end method

.method public static ʻٴ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    if-gez p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ˈ(I)J

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔʾ:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_1
    if-gez v2, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ˈ(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˆﾞ(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez v2, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ˈ(I)J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔי(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔʾ:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˆﾞ(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔי(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ʼʼ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    if-gez p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ˈ(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_1
    if-gez v2, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ˈ(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez v2, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ˈ(I)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˋᵔ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˋᵔ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ʼˎ(Ljava/util/List;)I
    .locals 5

    .prologue
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ˈ(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static ʼᐧ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    if-gez p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ˈ(I)I

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔʾ:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_1
    if-gez v2, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ˈ(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵎˊ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez v2, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ˈ(I)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴʼ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔʾ:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵎˊ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴʼ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ʽ(ILjava/util/List;)I
    .locals 0

    .prologue
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    mul-int/2addr p0, p1

    return p0
.end method

.method public static ʽﹳ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    if-gez p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ˈ(I)I

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔʾ:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_1
    if-gez v2, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ˈ(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵎˊ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez v2, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ˈ(I)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴʼ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔʾ:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵎˊ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴʼ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ʾᵎ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V
    .locals 9

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    const/16 v1, 0x3f

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v4

    move p3, p0

    :goto_0
    if-gez p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ˈ(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʽʽ(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_1
    if-gez v4, :cond_5

    invoke-virtual {p1, v4}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ˈ(I)J

    move-result-wide v5

    shl-long v7, v5, v2

    shr-long/2addr v5, v1

    xor-long/2addr v5, v7

    invoke-virtual {p2, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ـˏ(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez v4, :cond_5

    invoke-virtual {p1, v4}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ˈ(I)J

    move-result-wide v5

    shl-long v7, v5, v2

    shr-long/2addr v5, v1

    xor-long/2addr v5, v7

    invoke-virtual {p2, p0, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʼˈ(IJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v4

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʽʽ(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v4, p0, :cond_5

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    shl-long v7, v5, v2

    shr-long/2addr v5, v1

    xor-long/2addr v5, v7

    invoke-virtual {p2, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ـˏ(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v4, p3, :cond_5

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    shl-long v7, v5, v2

    shr-long/2addr v5, v1

    xor-long/2addr v5, v7

    invoke-virtual {p2, p0, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʼˈ(IJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ˆʾ(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/ᵢˏ;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˉـ;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public static ˈ(Ljava/util/List;)I
    .locals 5

    .prologue
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ˈ(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static ˉʿ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ˈ;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    if-eqz p3, :cond_3

    invoke-virtual {p2, p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    invoke-virtual {p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    goto :goto_3

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p2, p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v1

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔʾ:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    int-to-byte p0, p0

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉٴ(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move p3, v1

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_3

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉٴ(B)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public static ˉˆ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    if-gez p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ˈ(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_1
    if-gez v2, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ˈ(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˈʿ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez v2, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ˈ(I)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔٴ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˈʿ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔٴ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ˏי(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    if-gez p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ˈ(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_1
    if-gez v2, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ˈ(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ـˏ(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez v2, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ˈ(I)J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʼˈ(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ـˏ(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʼˈ(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ˑﹳ(Ljava/util/List;)I
    .locals 5

    .prologue
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ˈ(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static יـ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    if-gez p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ˈ(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_1
    if-gez v2, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ˈ(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˈʿ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez v2, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ˈ(I)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔٴ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˈʿ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔٴ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ـˆ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    if-gez p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ˈ(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵˊ(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_1
    if-gez v2, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ˈ(I)I

    move-result p0

    shl-int/lit8 p3, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p3

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez v2, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ˈ(I)I

    move-result p3

    shl-int/lit8 v0, p3, 0x1

    shr-int/lit8 p3, p3, 0x1f

    xor-int/2addr p3, v0

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˋᵔ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵˊ(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    shl-int/lit8 p3, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p3

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    shl-int/lit8 v0, p3, 0x1

    shr-int/lit8 p3, p3, 0x1f

    xor-int/2addr p3, v0

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˋᵔ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ˉـ;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/ʿᵢ;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    iget-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ﾞᴵ:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    invoke-virtual {v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ﹳٴ:I

    iget v1, p2, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ﹳٴ:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ⁱˊ:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget-object v3, p2, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ⁱˊ:[I

    iget v4, p0, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ﹳٴ:I

    iget v5, p2, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ﹳٴ:I

    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ʽ:[Ljava/lang/Object;

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p2, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ʽ:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ﹳٴ:I

    iget p2, p2, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ﹳٴ:I

    invoke-static {v4, v2, v3, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    const/4 p2, 0x1

    invoke-direct {p0, v0, v1, v3, p2}, Lcom/google/crypto/tink/shaded/protobuf/ʿ;-><init>(I[I[Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ˑﹳ:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ﹳٴ:I

    iget v1, p2, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ﹳٴ:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ﹳٴ(I)V

    iget-object v1, p2, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ⁱˊ:[I

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ⁱˊ:[I

    iget v4, p0, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ﹳٴ:I

    iget v5, p2, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ﹳٴ:I

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p2, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ʽ:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ʽ:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ﹳٴ:I

    iget p2, p2, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ﹳٴ:I

    invoke-static {v1, v2, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ﹳٴ:I

    :goto_0
    iput-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static ᵎﹶ(Ljava/util/List;)I
    .locals 5

    .prologue
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ˈ(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʽʽ(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʽʽ(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static ᵔʾ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ˉʿ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_3

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    invoke-virtual {p2, v2}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    goto :goto_3

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔʾ:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˆﾞ(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔי(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public static ᵔᵢ(Ljava/util/List;)I
    .locals 4

    .prologue
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ˈ(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static ᵔﹳ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    if-gez p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ˈ(I)J

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔʾ:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_1
    if-gez v2, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ˈ(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˆﾞ(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez v2, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ˈ(I)J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔי(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔʾ:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˆﾞ(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔי(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ᵢˏ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    if-gez p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ˈ(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_1
    if-gez v2, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ˈ(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ـˏ(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez v2, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ˈ(I)J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʼˈ(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v2

    move p3, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ـˏ(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʼˈ(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static ⁱˊ(ILjava/util/List;)I
    .locals 0

    .prologue
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    mul-int/2addr p0, p1

    return p0
.end method

.method public static ﹳٴ(Ljava/util/List;)I
    .locals 5

    .prologue
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ˈ(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static ﹳᐧ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/יـ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_3

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    invoke-virtual {p2, v2}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    goto :goto_3

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p2, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    move p0, v2

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔʾ:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵎˊ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴʼ(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public static ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .prologue
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static ﾞᴵ(Ljava/util/List;)I
    .locals 4

    .prologue
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ˈ(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵˊ(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵˊ(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method
