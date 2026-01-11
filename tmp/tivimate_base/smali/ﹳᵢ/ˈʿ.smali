.class public final Lﹳᵢ/ˈʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ˉـ;


# instance fields
.field public final ʾˋ:I

.field public final synthetic ᴵˊ:Lﹳᵢ/ˋᵔ;


# direct methods
.method public constructor <init>(Lﹳᵢ/ˋᵔ;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳᵢ/ˈʿ;->ᴵˊ:Lﹳᵢ/ˋᵔ;

    iput p2, p0, Lﹳᵢ/ˈʿ;->ʾˋ:I

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 3

    .prologue
    iget v0, p0, Lﹳᵢ/ˈʿ;->ʾˋ:I

    iget-object v1, p0, Lﹳᵢ/ˈʿ;->ᴵˊ:Lﹳᵢ/ˋᵔ;

    iget-object v2, v1, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lﹳᵢ/ᴵˑ;->ᵢˏ()V

    iget-object v0, v1, Lﹳᵢ/ˋᵔ;->ᵔי:Lᵔⁱ/ˉʿ;

    iget-object v2, v1, Lﹳᵢ/ˋᵔ;->ˈٴ:Lʻᴵ/יـ;

    iget v1, v1, Lﹳᵢ/ˋᵔ;->ˏᵢ:I

    invoke-virtual {v2, v1}, Lʻᴵ/יـ;->ⁱˊ(I)I

    move-result v1

    iget-object v2, v0, Lᵔⁱ/ˉʿ;->ʽʽ:Ljava/io/IOException;

    if-nez v2, :cond_3

    iget-object v0, v0, Lᵔⁱ/ˉʿ;->ᴵˊ:Lᵔⁱ/ˆʾ;

    if-eqz v0, :cond_2

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    iget v1, v0, Lᵔⁱ/ˆʾ;->ʾˋ:I

    :cond_0
    iget-object v2, v0, Lᵔⁱ/ˆʾ;->ᴵᵔ:Ljava/io/IOException;

    if-eqz v2, :cond_2

    iget v0, v0, Lᵔⁱ/ˆʾ;->ˊʻ:I

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    throw v2

    :cond_2
    :goto_0
    return-void

    :cond_3
    throw v2
.end method

.method public final ᵔᵢ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;I)I
    .locals 5

    .prologue
    iget-object v0, p0, Lﹳᵢ/ˈʿ;->ᴵˊ:Lﹳᵢ/ˋᵔ;

    invoke-virtual {v0}, Lﹳᵢ/ˋᵔ;->ٴᵢ()Z

    move-result v1

    const/4 v2, -0x3

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget v1, p0, Lﹳᵢ/ˈʿ;->ʾˋ:I

    invoke-virtual {v0, v1}, Lﹳᵢ/ˋᵔ;->ᴵˊ(I)V

    iget-object v3, v0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    aget-object v3, v3, v1

    iget-boolean v4, v0, Lﹳᵢ/ˋᵔ;->ٴﹳ:Z

    invoke-virtual {v3, p1, p2, p3, v4}, Lﹳᵢ/ᴵˑ;->ʽʽ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;IZ)I

    move-result p1

    if-ne p1, v2, :cond_1

    invoke-virtual {v0, v1}, Lﹳᵢ/ˋᵔ;->ʽʽ(I)V

    :cond_1
    return p1
.end method

.method public final ᵔﹳ(J)I
    .locals 4

    .prologue
    iget-object v0, p0, Lﹳᵢ/ˈʿ;->ᴵˊ:Lﹳᵢ/ˋᵔ;

    invoke-virtual {v0}, Lﹳᵢ/ˋᵔ;->ٴᵢ()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v1, p0, Lﹳᵢ/ˈʿ;->ʾˋ:I

    invoke-virtual {v0, v1}, Lﹳᵢ/ˋᵔ;->ᴵˊ(I)V

    iget-object v2, v0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    aget-object v2, v2, v1

    iget-boolean v3, v0, Lﹳᵢ/ˋᵔ;->ٴﹳ:Z

    invoke-virtual {v2, v3, p1, p2}, Lﹳᵢ/ᴵˑ;->ʻٴ(ZJ)I

    move-result p1

    invoke-virtual {v2, p1}, Lﹳᵢ/ᴵˑ;->ᵎⁱ(I)V

    if-nez p1, :cond_1

    invoke-virtual {v0, v1}, Lﹳᵢ/ˋᵔ;->ʽʽ(I)V

    :cond_1
    return p1
.end method

.method public final ﹳٴ()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lﹳᵢ/ˈʿ;->ᴵˊ:Lﹳᵢ/ˋᵔ;

    invoke-virtual {v0}, Lﹳᵢ/ˋᵔ;->ٴᵢ()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lﹳᵢ/ˋᵔ;->ـˏ:[Lﹳᵢ/ᴵˑ;

    iget v2, p0, Lﹳᵢ/ˈʿ;->ʾˋ:I

    aget-object v1, v1, v2

    iget-boolean v0, v0, Lﹳᵢ/ˋᵔ;->ٴﹳ:Z

    invoke-virtual {v1, v0}, Lﹳᵢ/ᴵˑ;->ʾᵎ(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
