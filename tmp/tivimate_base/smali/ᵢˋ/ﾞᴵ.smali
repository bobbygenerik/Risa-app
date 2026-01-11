.class public final Lᵢˋ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ˉـ;


# instance fields
.field public final ʽʽ:I

.field public final ʾˋ:Lᵢˋ/ᵔᵢ;

.field public ˈٴ:Z

.field public final ᴵˊ:Lﹳᵢ/ᴵˑ;

.field public final synthetic ᴵᵔ:Lᵢˋ/ᵔᵢ;


# direct methods
.method public constructor <init>(Lᵢˋ/ᵔᵢ;Lᵢˋ/ᵔᵢ;Lﹳᵢ/ᴵˑ;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵢˋ/ﾞᴵ;->ᴵᵔ:Lᵢˋ/ᵔᵢ;

    iput-object p2, p0, Lᵢˋ/ﾞᴵ;->ʾˋ:Lᵢˋ/ᵔᵢ;

    iput-object p3, p0, Lᵢˋ/ﾞᴵ;->ᴵˊ:Lﹳᵢ/ᴵˑ;

    iput p4, p0, Lᵢˋ/ﾞᴵ;->ʽʽ:I

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 0

    return-void
.end method

.method public final ᵔᵢ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;I)I
    .locals 4

    .prologue
    iget-object v0, p0, Lᵢˋ/ﾞᴵ;->ᴵᵔ:Lᵢˋ/ᵔᵢ;

    invoke-virtual {v0}, Lᵢˋ/ᵔᵢ;->ᵢˏ()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lᵢˋ/ᵔᵢ;->ˈⁱ:Lᵢˋ/ﹳٴ;

    iget-object v2, p0, Lᵢˋ/ﾞᴵ;->ᴵˊ:Lﹳᵢ/ᴵˑ;

    if-eqz v1, :cond_1

    iget v3, p0, Lᵢˋ/ﾞᴵ;->ʽʽ:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lᵢˋ/ﹳٴ;->ˈ(I)I

    move-result v1

    invoke-virtual {v2}, Lﹳᵢ/ᴵˑ;->ˏי()I

    move-result v3

    if-gt v1, v3, :cond_1

    :goto_0
    const/4 p1, -0x3

    return p1

    :cond_1
    invoke-virtual {p0}, Lᵢˋ/ﾞᴵ;->ⁱˊ()V

    iget-boolean v0, v0, Lᵢˋ/ᵔᵢ;->ʿ:Z

    invoke-virtual {v2, p1, p2, p3, v0}, Lﹳᵢ/ᴵˑ;->ʽʽ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;IZ)I

    move-result p1

    return p1
.end method

.method public final ᵔﹳ(J)I
    .locals 3

    .prologue
    iget-object v0, p0, Lᵢˋ/ﾞᴵ;->ᴵᵔ:Lᵢˋ/ᵔᵢ;

    invoke-virtual {v0}, Lᵢˋ/ᵔᵢ;->ᵢˏ()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v1, v0, Lᵢˋ/ᵔᵢ;->ʿ:Z

    iget-object v2, p0, Lᵢˋ/ﾞᴵ;->ᴵˊ:Lﹳᵢ/ᴵˑ;

    invoke-virtual {v2, v1, p1, p2}, Lﹳᵢ/ᴵˑ;->ʻٴ(ZJ)I

    move-result p1

    iget-object p2, v0, Lᵢˋ/ᵔᵢ;->ˈⁱ:Lᵢˋ/ﹳٴ;

    if-eqz p2, :cond_1

    iget v0, p0, Lᵢˋ/ﾞᴵ;->ʽʽ:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lᵢˋ/ﹳٴ;->ˈ(I)I

    move-result p2

    invoke-virtual {v2}, Lﹳᵢ/ᴵˑ;->ˏי()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    invoke-virtual {v2, p1}, Lﹳᵢ/ᴵˑ;->ᵎⁱ(I)V

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lᵢˋ/ﾞᴵ;->ⁱˊ()V

    :cond_2
    return p1
.end method

.method public final ⁱˊ()V
    .locals 8

    .prologue
    iget-boolean v0, p0, Lᵢˋ/ﾞᴵ;->ˈٴ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lᵢˋ/ﾞᴵ;->ᴵᵔ:Lᵢˋ/ᵔᵢ;

    iget-object v1, v0, Lᵢˋ/ᵔᵢ;->ٴᵢ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v2, v0, Lᵢˋ/ᵔᵢ;->ᴵˊ:[I

    iget v3, p0, Lᵢˋ/ﾞᴵ;->ʽʽ:I

    aget v2, v2, v3

    iget-object v4, v0, Lᵢˋ/ᵔᵢ;->ʽʽ:[Lʽⁱ/ﹳᐧ;

    aget-object v3, v4, v3

    const/4 v5, 0x0

    iget-wide v6, v0, Lᵢˋ/ᵔᵢ;->ـˏ:J

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ٴﹶ(ILʽⁱ/ﹳᐧ;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lᵢˋ/ﾞᴵ;->ˈٴ:Z

    :cond_0
    return-void
.end method

.method public final ﹳٴ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lᵢˋ/ﾞᴵ;->ᴵᵔ:Lᵢˋ/ᵔᵢ;

    invoke-virtual {v0}, Lᵢˋ/ᵔᵢ;->ᵢˏ()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lᵢˋ/ﾞᴵ;->ᴵˊ:Lﹳᵢ/ᴵˑ;

    iget-boolean v0, v0, Lᵢˋ/ᵔᵢ;->ʿ:Z

    invoke-virtual {v1, v0}, Lﹳᵢ/ᴵˑ;->ʾᵎ(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
