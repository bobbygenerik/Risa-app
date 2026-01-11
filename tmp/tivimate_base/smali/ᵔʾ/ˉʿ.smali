.class public final Lᵔʾ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field public final ⁱˊ:Landroid/view/ActionProvider;

.field public ﹳٴ:Lˊⁱ/ˑﹳ;


# direct methods
.method public constructor <init>(Lᵔʾ/ᵔﹳ;Landroid/view/ActionProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lᵔʾ/ˉʿ;->ⁱˊ:Landroid/view/ActionProvider;

    return-void
.end method


# virtual methods
.method public final onActionProviderVisibilityChanged(Z)V
    .locals 1

    .prologue
    iget-object p1, p0, Lᵔʾ/ˉʿ;->ﹳٴ:Lˊⁱ/ˑﹳ;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lˊⁱ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lᵔʾ/ﾞʻ;

    iget-object p1, p1, Lᵔʾ/ﾞʻ;->ᵔʾ:Lᵔʾ/ˆʾ;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lᵔʾ/ˆʾ;->ᵔᵢ:Z

    invoke-virtual {p1, v0}, Lᵔʾ/ˆʾ;->ʼᐧ(Z)V

    :cond_0
    return-void
.end method
