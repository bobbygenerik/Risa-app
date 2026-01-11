.class public final Lˉˆ/ʻᴵ;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field public final synthetic ﹳٴ:Lˉˆ/ʿـ;


# direct methods
.method public constructor <init>(Lˉˆ/ʿـ;)V
    .locals 0

    iput-object p1, p0, Lˉˆ/ʻᴵ;->ﹳٴ:Lˉˆ/ʿـ;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .prologue
    iget-object v0, p0, Lˉˆ/ʻᴵ;->ﹳٴ:Lˉˆ/ʿـ;

    iget-object v1, v0, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lˉˆ/ʿـ;->ˑﹳ()V

    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    iget-object v0, p0, Lˉˆ/ʻᴵ;->ﹳٴ:Lˉˆ/ʿـ;

    invoke-virtual {v0}, Lˉˆ/ʿـ;->dismiss()V

    return-void
.end method
