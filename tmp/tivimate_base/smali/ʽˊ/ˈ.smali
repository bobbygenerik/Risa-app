.class public final Lʽˊ/ˈ;
.super Lʽˊ/ᵔﹳ;
.source "SourceFile"


# instance fields
.field public final synthetic ˑﹳ:I


# direct methods
.method public synthetic constructor <init>(Lʽˊ/ʼᐧ;I)V
    .locals 0

    iput p2, p0, Lʽˊ/ˈ;->ˑﹳ:I

    invoke-direct {p0, p1}, Lʽˊ/ᵔﹳ;-><init>(Lʽˊ/ʼᐧ;)V

    return-void
.end method


# virtual methods
.method public ᵔﹳ()V
    .locals 2

    .prologue
    iget v0, p0, Lʽˊ/ˈ;->ˑﹳ:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lʽˊ/ᵔﹳ;->ⁱˊ:Lʽˊ/ʼᐧ;

    const/4 v1, 0x0

    iput-object v1, v0, Lʽˊ/ʼᐧ;->ˈʿ:Landroid/view/View$OnLongClickListener;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {v0, v1}, Lˑˊ/ﹳٴ;->ʼˎ(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
