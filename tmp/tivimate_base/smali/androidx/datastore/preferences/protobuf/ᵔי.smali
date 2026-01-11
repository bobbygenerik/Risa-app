.class public final Landroidx/datastore/preferences/protobuf/ᵔי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/ʼˈ;


# instance fields
.field public final ʽ:Landroidx/datastore/preferences/protobuf/ˉˆ;

.field public final ⁱˊ:Landroidx/datastore/preferences/protobuf/ʿ;

.field public final ﹳٴ:Landroidx/datastore/preferences/protobuf/ﹳٴ;


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/ʿ;Landroidx/datastore/preferences/protobuf/ˉˆ;Landroidx/datastore/preferences/protobuf/ﹳٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/ᵔי;->ⁱˊ:Landroidx/datastore/preferences/protobuf/ʿ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/ᵔי;->ʽ:Landroidx/datastore/preferences/protobuf/ˉˆ;

    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/ᵔי;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Landroidx/datastore/preferences/protobuf/ʻٴ;)I
    .locals 7

    .prologue
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵔי;->ⁱˊ:Landroidx/datastore/preferences/protobuf/ʿ;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ᵎᵔ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/ʻٴ;->unknownFields:Landroidx/datastore/preferences/protobuf/ʿᵢ;

    iget v0, p1, Landroidx/datastore/preferences/protobuf/ʿᵢ;->ˈ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p1, Landroidx/datastore/preferences/protobuf/ʿᵢ;->ﹳٴ:I

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Landroidx/datastore/preferences/protobuf/ʿᵢ;->ⁱˊ:[I

    aget v2, v2, v0

    const/4 v3, 0x3

    ushr-int/2addr v2, v3

    iget-object v4, p1, Landroidx/datastore/preferences/protobuf/ʿᵢ;->ʽ:[Ljava/lang/Object;

    aget-object v4, v4, v0

    check-cast v4, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    const/4 v5, 0x1

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    const/4 v6, 0x2

    mul-int/2addr v5, v6

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v6

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v2

    add-int/2addr v2, v6

    add-int/2addr v2, v5

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˊʻ(ILandroidx/datastore/preferences/protobuf/ᵎﹶ;)I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v1, p1, Landroidx/datastore/preferences/protobuf/ʿᵢ;->ˈ:I

    return v1
.end method

.method public final ʽ(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵔי;->ʽ:Landroidx/datastore/preferences/protobuf/ˉˆ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/support/v4/media/session/ﹳٴ;->ʼᐧ(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final ˈ()Landroidx/datastore/preferences/protobuf/ʻٴ;
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵔי;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ﹳٴ;

    instance-of v1, v0, Landroidx/datastore/preferences/protobuf/ʻٴ;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ʻٴ;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ʼˎ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast v0, Landroidx/datastore/preferences/protobuf/ʻٴ;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ʽ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ˏי;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˏי;->ⁱˊ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object v0

    return-object v0
.end method

.method public final ˑﹳ(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ʽʽ;)V
    .locals 0

    iget-object p2, p0, Landroidx/datastore/preferences/protobuf/ᵔי;->ʽ:Landroidx/datastore/preferences/protobuf/ˉˆ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/support/v4/media/session/ﹳٴ;->ʼᐧ(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final ᵎﹶ(Landroidx/datastore/preferences/protobuf/ʻٴ;Landroidx/datastore/preferences/protobuf/ʻٴ;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵔי;->ⁱˊ:Landroidx/datastore/preferences/protobuf/ʿ;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ᵎᵔ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/ʻٴ;->unknownFields:Landroidx/datastore/preferences/protobuf/ʿᵢ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Landroidx/datastore/preferences/protobuf/ʻٴ;->unknownFields:Landroidx/datastore/preferences/protobuf/ʿᵢ;

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/ʿᵢ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final ᵔᵢ(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ٴﹶ;Landroidx/datastore/preferences/protobuf/ᵔʾ;)V
    .locals 0

    iget-object p2, p0, Landroidx/datastore/preferences/protobuf/ᵔי;->ⁱˊ:Landroidx/datastore/preferences/protobuf/ʿ;

    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/ʿ;->ﹳٴ(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/ʿᵢ;

    iget-object p2, p0, Landroidx/datastore/preferences/protobuf/ᵔי;->ʽ:Landroidx/datastore/preferences/protobuf/ˉˆ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final ⁱˊ(Ljava/lang/Object;)V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵔי;->ⁱˊ:Landroidx/datastore/preferences/protobuf/ʿ;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ᵎᵔ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/ʻٴ;

    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/ʻٴ;->unknownFields:Landroidx/datastore/preferences/protobuf/ʿᵢ;

    iget-boolean v1, v0, Landroidx/datastore/preferences/protobuf/ʿᵢ;->ˑﹳ:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/datastore/preferences/protobuf/ʿᵢ;->ˑﹳ:Z

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵔי;->ʽ:Landroidx/datastore/preferences/protobuf/ˉˆ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/support/v4/media/session/ﹳٴ;->ʼᐧ(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵔי;->ⁱˊ:Landroidx/datastore/preferences/protobuf/ʿ;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/ـˏ;->ٴﹶ(Landroidx/datastore/preferences/protobuf/ʿ;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final ﾞᴵ(Landroidx/datastore/preferences/protobuf/ʻٴ;)I
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵔי;->ⁱˊ:Landroidx/datastore/preferences/protobuf/ʿ;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ᵎᵔ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/ʻٴ;->unknownFields:Landroidx/datastore/preferences/protobuf/ʿᵢ;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ʿᵢ;->hashCode()I

    move-result p1

    return p1
.end method
