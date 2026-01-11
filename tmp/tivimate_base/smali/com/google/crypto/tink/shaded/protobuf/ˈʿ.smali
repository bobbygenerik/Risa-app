.class public final Lcom/google/crypto/tink/shaded/protobuf/ˈʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;


# instance fields
.field public final ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼᐧ;

.field public final ⁱˊ:Lcom/google/crypto/tink/shaded/protobuf/ˉـ;

.field public final ﹳٴ:Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/ˉـ;Lcom/google/crypto/tink/shaded/protobuf/ʼᐧ;Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ˈʿ;->ⁱˊ:Lcom/google/crypto/tink/shaded/protobuf/ˉـ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/ˈʿ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼᐧ;

    iput-object p3, p0, Lcom/google/crypto/tink/shaded/protobuf/ˈʿ;->ﹳٴ:Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;)V
    .locals 0

    iget-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/ˈʿ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼᐧ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/support/v4/media/session/ﹳٴ;->ʼᐧ(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final ʽ(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ˈʿ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼᐧ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/support/v4/media/session/ﹳٴ;->ʼᐧ(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final ˆʾ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)I
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ˈʿ;->ⁱˊ:Lcom/google/crypto/tink/shaded/protobuf/ˉـ;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ʿᵢ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->hashCode()I

    move-result p1

    return p1
.end method

.method public final ˈ()Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ˈʿ;->ﹳٴ:Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;

    instance-of v1, v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->יـ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ˈ()Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ˈ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    return-object v0
.end method

.method public final ˑﹳ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)I
    .locals 7

    .prologue
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ˈʿ;->ⁱˊ:Lcom/google/crypto/tink/shaded/protobuf/ˉـ;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ʿᵢ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    iget v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ˈ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p1, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ﹳٴ:I

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ⁱˊ:[I

    aget v2, v2, v0

    const/4 v3, 0x3

    ushr-int/2addr v2, v3

    iget-object v4, p1, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ʽ:[Ljava/lang/Object;

    aget-object v4, v4, v0

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v5

    const/4 v6, 0x2

    mul-int/2addr v5, v6

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v6

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v2

    add-int/2addr v2, v6

    add-int/2addr v2, v5

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʾˋ(ILcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v1, p1, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ˈ:I

    return v1
.end method

.method public final ᵎﹶ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)V
    .locals 0

    iget-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/ˈʿ;->ⁱˊ:Lcom/google/crypto/tink/shaded/protobuf/ˉـ;

    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˉـ;->ﹳٴ(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    iget-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/ˈʿ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼᐧ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final ᵔᵢ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ˈʿ;->ⁱˊ:Lcom/google/crypto/tink/shaded/protobuf/ˉـ;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ʿᵢ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    invoke-virtual {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final ⁱˊ(Ljava/lang/Object;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ˈʿ;->ⁱˊ:Lcom/google/crypto/tink/shaded/protobuf/ˉـ;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ʿᵢ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    iget-boolean v1, v0, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ˑﹳ:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ˑﹳ:Z

    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ˈʿ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼᐧ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/support/v4/media/session/ﹳٴ;->ʼᐧ(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ˈʿ;->ⁱˊ:Lcom/google/crypto/tink/shaded/protobuf/ˉـ;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ˉـ;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final ﾞᴵ(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/ˈʻ;)V
    .locals 0

    .prologue
    move-object p2, p1

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    iget-object p3, p2, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    sget-object p4, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ﾞᴵ:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    if-ne p3, p4, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    move-result-object p3

    iput-object p3, p2, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    :cond_0
    invoke-static {p1}, Lˉˆ/ٴᴵ;->ˈ(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method
