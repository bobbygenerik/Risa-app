.class public final Lﹳ/ʽ;
.super Lᴵˋ/ˊʻ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:Landroid/content/Context;

.field public final synthetic ˈ:Landroid/text/TextPaint;

.field public final synthetic ˑﹳ:Lᴵˋ/ˊʻ;

.field public final synthetic ﾞᴵ:Lﹳ/ˈ;


# direct methods
.method public constructor <init>(Lﹳ/ˈ;Landroid/content/Context;Landroid/text/TextPaint;Lᴵˋ/ˊʻ;)V
    .locals 1

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lᴵˋ/ˊʻ;-><init>(I)V

    iput-object p1, p0, Lﹳ/ʽ;->ﾞᴵ:Lﹳ/ˈ;

    iput-object p2, p0, Lﹳ/ʽ;->ʽ:Landroid/content/Context;

    iput-object p3, p0, Lﹳ/ʽ;->ˈ:Landroid/text/TextPaint;

    iput-object p4, p0, Lﹳ/ʽ;->ˑﹳ:Lᴵˋ/ˊʻ;

    return-void
.end method


# virtual methods
.method public final ˈٴ(I)V
    .locals 1

    iget-object v0, p0, Lﹳ/ʽ;->ˑﹳ:Lᴵˋ/ˊʻ;

    invoke-virtual {v0, p1}, Lᴵˋ/ˊʻ;->ˈٴ(I)V

    return-void
.end method

.method public final ᴵᵔ(Landroid/graphics/Typeface;Z)V
    .locals 3

    iget-object v0, p0, Lﹳ/ʽ;->ʽ:Landroid/content/Context;

    iget-object v1, p0, Lﹳ/ʽ;->ˈ:Landroid/text/TextPaint;

    iget-object v2, p0, Lﹳ/ʽ;->ﾞᴵ:Lﹳ/ˈ;

    invoke-virtual {v2, v0, v1, p1}, Lﹳ/ˈ;->ﾞᴵ(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lﹳ/ʽ;->ˑﹳ:Lᴵˋ/ˊʻ;

    invoke-virtual {v0, p1, p2}, Lᴵˋ/ˊʻ;->ᴵᵔ(Landroid/graphics/Typeface;Z)V

    return-void
.end method
