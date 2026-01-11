.class public final Lˈـ/ٴᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Ljava/lang/String;

.field public final ʽ:Ljava/lang/String;

.field public final ˆʾ:Ljava/lang/String;

.field public final ˈ:Ljava/lang/String;

.field public final ˑﹳ:Ljava/lang/String;

.field public final ٴﹶ:Ljava/lang/String;

.field public final ᵎﹶ:Landroid/net/Uri;

.field public final ᵔᵢ:Ljava/lang/String;

.field public final ⁱˊ:Lʼʻ/ʿᵢ;

.field public final ﹳٴ:Lʼʻ/ᵔי;

.field public final ﾞʻ:Ljava/lang/String;

.field public final ﾞᴵ:I


# direct methods
.method public constructor <init>(Lˈـ/ˊʻ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lˈـ/ˊʻ;->ﹳٴ:Ljava/util/HashMap;

    invoke-static {v0}, Lʼʻ/ᵔי;->ﹳٴ(Ljava/util/Map;)Lʼʻ/ᵔי;

    move-result-object v0

    iput-object v0, p0, Lˈـ/ٴᵢ;->ﹳٴ:Lʼʻ/ᵔי;

    iget-object v0, p1, Lˈـ/ˊʻ;->ⁱˊ:Lʼʻ/ˊʻ;

    invoke-virtual {v0}, Lʼʻ/ˊʻ;->ᵎﹶ()Lʼʻ/ʿᵢ;

    move-result-object v0

    iput-object v0, p0, Lˈـ/ٴᵢ;->ⁱˊ:Lʼʻ/ʿᵢ;

    iget-object v0, p1, Lˈـ/ˊʻ;->ˈ:Ljava/lang/String;

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    iput-object v0, p0, Lˈـ/ٴᵢ;->ʽ:Ljava/lang/String;

    iget-object v0, p1, Lˈـ/ˊʻ;->ˑﹳ:Ljava/lang/String;

    iput-object v0, p0, Lˈـ/ٴᵢ;->ˈ:Ljava/lang/String;

    iget-object v0, p1, Lˈـ/ˊʻ;->ﾞᴵ:Ljava/lang/String;

    iput-object v0, p0, Lˈـ/ٴᵢ;->ˑﹳ:Ljava/lang/String;

    iget-object v0, p1, Lˈـ/ˊʻ;->ᵎﹶ:Landroid/net/Uri;

    iput-object v0, p0, Lˈـ/ٴᵢ;->ᵎﹶ:Landroid/net/Uri;

    iget-object v0, p1, Lˈـ/ˊʻ;->ᵔᵢ:Ljava/lang/String;

    iput-object v0, p0, Lˈـ/ٴᵢ;->ᵔᵢ:Ljava/lang/String;

    iget v0, p1, Lˈـ/ˊʻ;->ʽ:I

    iput v0, p0, Lˈـ/ٴᵢ;->ﾞᴵ:I

    iget-object v0, p1, Lˈـ/ˊʻ;->ʼˎ:Ljava/lang/String;

    iput-object v0, p0, Lˈـ/ٴᵢ;->ʼˎ:Ljava/lang/String;

    iget-object v0, p1, Lˈـ/ˊʻ;->ٴﹶ:Ljava/lang/String;

    iput-object v0, p0, Lˈـ/ٴᵢ;->ˆʾ:Ljava/lang/String;

    iget-object v0, p1, Lˈـ/ˊʻ;->ﾞʻ:Ljava/lang/String;

    iput-object v0, p0, Lˈـ/ٴᵢ;->ٴﹶ:Ljava/lang/String;

    iget-object p1, p1, Lˈـ/ˊʻ;->ˆʾ:Ljava/lang/String;

    iput-object p1, p0, Lˈـ/ٴᵢ;->ﾞʻ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    if-ne p0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lˈـ/ٴᵢ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lˈـ/ٴᵢ;

    iget v0, p0, Lˈـ/ٴᵢ;->ﾞᴵ:I

    iget v1, p1, Lˈـ/ٴᵢ;->ﾞᴵ:I

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lˈـ/ٴᵢ;->ﹳٴ:Lʼʻ/ᵔי;

    iget-object v1, p0, Lˈـ/ٴᵢ;->ﹳٴ:Lʼʻ/ᵔי;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lʼʻ/ﹳᐧ;->ﾞᴵ(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˈـ/ٴᵢ;->ⁱˊ:Lʼʻ/ʿᵢ;

    iget-object v1, p1, Lˈـ/ٴᵢ;->ⁱˊ:Lʼʻ/ʿᵢ;

    invoke-virtual {v0, v1}, Lʼʻ/ᵎⁱ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˈـ/ٴᵢ;->ˈ:Ljava/lang/String;

    iget-object v1, p1, Lˈـ/ٴᵢ;->ˈ:Ljava/lang/String;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˈـ/ٴᵢ;->ʽ:Ljava/lang/String;

    iget-object v1, p1, Lˈـ/ٴᵢ;->ʽ:Ljava/lang/String;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˈـ/ٴᵢ;->ˑﹳ:Ljava/lang/String;

    iget-object v1, p1, Lˈـ/ٴᵢ;->ˑﹳ:Ljava/lang/String;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˈـ/ٴᵢ;->ﾞʻ:Ljava/lang/String;

    iget-object v1, p1, Lˈـ/ٴᵢ;->ﾞʻ:Ljava/lang/String;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˈـ/ٴᵢ;->ᵎﹶ:Landroid/net/Uri;

    iget-object v1, p1, Lˈـ/ٴᵢ;->ᵎﹶ:Landroid/net/Uri;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˈـ/ٴᵢ;->ˆʾ:Ljava/lang/String;

    iget-object v1, p1, Lˈـ/ٴᵢ;->ˆʾ:Ljava/lang/String;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˈـ/ٴᵢ;->ٴﹶ:Ljava/lang/String;

    iget-object v1, p1, Lˈـ/ٴᵢ;->ٴﹶ:Ljava/lang/String;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˈـ/ٴᵢ;->ᵔᵢ:Ljava/lang/String;

    iget-object v1, p1, Lˈـ/ٴᵢ;->ᵔᵢ:Ljava/lang/String;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˈـ/ٴᵢ;->ʼˎ:Ljava/lang/String;

    iget-object p1, p1, Lˈـ/ٴᵢ;->ʼˎ:Ljava/lang/String;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    iget-object v0, p0, Lˈـ/ٴᵢ;->ﹳٴ:Lʼʻ/ᵔי;

    invoke-virtual {v0}, Lʼʻ/ᵔי;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lˈـ/ٴᵢ;->ⁱˊ:Lʼʻ/ʿᵢ;

    invoke-virtual {v1}, Lʼʻ/ᵎⁱ;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    const/4 v0, 0x0

    iget-object v2, p0, Lˈـ/ٴᵢ;->ˈ:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lˈـ/ٴᵢ;->ʽ:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lˈـ/ٴᵢ;->ˑﹳ:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lˈـ/ٴᵢ;->ﾞᴵ:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lˈـ/ٴᵢ;->ﾞʻ:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lˈـ/ٴᵢ;->ᵎﹶ:Landroid/net/Uri;

    if-nez v2, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lˈـ/ٴᵢ;->ˆʾ:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lˈـ/ٴᵢ;->ٴﹶ:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v0

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lˈـ/ٴᵢ;->ᵔᵢ:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lˈـ/ٴᵢ;->ʼˎ:Ljava/lang/String;

    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v1, v0

    return v1
.end method
