.class public final synthetic Lʽˊ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˈᐧ/ﹳٴ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lʽˊ/ʼᐧ;


# direct methods
.method public synthetic constructor <init>(Lʽˊ/ʼᐧ;I)V
    .locals 0

    iput p2, p0, Lʽˊ/ﾞʻ;->ʾˋ:I

    iput-object p1, p0, Lʽˊ/ﾞʻ;->ᴵˊ:Lʽˊ/ʼᐧ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʼˎ()V
    .locals 3

    .prologue
    iget v0, p0, Lʽˊ/ﾞʻ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʽˊ/ﾞʻ;->ᴵˊ:Lʽˊ/ʼᐧ;

    iget-object v1, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ˈʿ:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lˑˊ/ﹳٴ;->ﾞʻ(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lʽˊ/ﾞʻ;->ᴵˊ:Lʽˊ/ʼᐧ;

    iget-object v1, v0, Lʽˊ/ʼᐧ;->ʽʽ:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ˊʻ:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lˑˊ/ﹳٴ;->ﾞʻ(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
