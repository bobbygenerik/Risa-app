.class public final Lʽ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field public final synthetic ʽ:Lᴵⁱ/ﹳٴ;

.field public final synthetic ˈ:Lᴵⁱ/ﹳٴ;

.field public final synthetic ⁱˊ:Lᴵⁱ/ﾞʻ;

.field public final synthetic ﹳٴ:Lᴵⁱ/ﾞʻ;


# direct methods
.method public constructor <init>(Lᴵⁱ/ﾞʻ;Lᴵⁱ/ﾞʻ;Lᴵⁱ/ﹳٴ;Lᴵⁱ/ﹳٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽ/ᵔﹳ;->ﹳٴ:Lᴵⁱ/ﾞʻ;

    iput-object p2, p0, Lʽ/ᵔﹳ;->ⁱˊ:Lᴵⁱ/ﾞʻ;

    iput-object p3, p0, Lʽ/ᵔﹳ;->ʽ:Lᴵⁱ/ﹳٴ;

    iput-object p4, p0, Lʽ/ᵔﹳ;->ˈ:Lᴵⁱ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 1

    iget-object v0, p0, Lʽ/ᵔﹳ;->ˈ:Lᴵⁱ/ﹳٴ;

    invoke-interface {v0}, Lᴵⁱ/ﹳٴ;->ʽ()Ljava/lang/Object;

    return-void
.end method

.method public final onBackInvoked()V
    .locals 1

    iget-object v0, p0, Lʽ/ᵔﹳ;->ʽ:Lᴵⁱ/ﹳٴ;

    invoke-interface {v0}, Lᴵⁱ/ﹳٴ;->ʽ()Ljava/lang/Object;

    return-void
.end method

.method public final onBackProgressed(Landroid/window/BackEvent;)V
    .locals 1

    new-instance v0, Lʽ/ⁱˊ;

    invoke-direct {v0, p1}, Lʽ/ⁱˊ;-><init>(Landroid/window/BackEvent;)V

    iget-object p1, p0, Lʽ/ᵔﹳ;->ⁱˊ:Lᴵⁱ/ﾞʻ;

    invoke-interface {p1, v0}, Lᴵⁱ/ﾞʻ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onBackStarted(Landroid/window/BackEvent;)V
    .locals 1

    new-instance v0, Lʽ/ⁱˊ;

    invoke-direct {v0, p1}, Lʽ/ⁱˊ;-><init>(Landroid/window/BackEvent;)V

    iget-object p1, p0, Lʽ/ᵔﹳ;->ﹳٴ:Lᴵⁱ/ﾞʻ;

    invoke-interface {p1, v0}, Lᴵⁱ/ﾞʻ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
