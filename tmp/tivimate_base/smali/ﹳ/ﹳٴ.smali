.class public final Lﹳ/ﹳٴ;
.super Lᴵˋ/ˊʻ;
.source "SourceFile"


# instance fields
.field public final ʽ:Landroid/graphics/Typeface;

.field public final ˈ:Lﹳי/ʽ;

.field public ˑﹳ:Z


# direct methods
.method public constructor <init>(Lﹳי/ʽ;Landroid/graphics/Typeface;)V
    .locals 1

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lᴵˋ/ˊʻ;-><init>(I)V

    iput-object p2, p0, Lﹳ/ﹳٴ;->ʽ:Landroid/graphics/Typeface;

    iput-object p1, p0, Lﹳ/ﹳٴ;->ˈ:Lﹳי/ʽ;

    return-void
.end method


# virtual methods
.method public final ˈٴ(I)V
    .locals 1

    .prologue
    iget-boolean p1, p0, Lﹳ/ﹳٴ;->ˑﹳ:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lﹳ/ﹳٴ;->ˈ:Lﹳי/ʽ;

    iget-object p1, p1, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Lˈᐧ/ʽ;

    iget-object v0, p0, Lﹳ/ﹳٴ;->ʽ:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Lˈᐧ/ʽ;->ﾞʻ(Landroid/graphics/Typeface;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lˈᐧ/ʽ;->ˆʾ(Z)V

    :cond_0
    return-void
.end method

.method public final ᴵᵔ(Landroid/graphics/Typeface;Z)V
    .locals 0

    .prologue
    iget-boolean p2, p0, Lﹳ/ﹳٴ;->ˑﹳ:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lﹳ/ﹳٴ;->ˈ:Lﹳי/ʽ;

    iget-object p2, p2, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast p2, Lˈᐧ/ʽ;

    invoke-virtual {p2, p1}, Lˈᐧ/ʽ;->ﾞʻ(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lˈᐧ/ʽ;->ˆʾ(Z)V

    :cond_0
    return-void
.end method
