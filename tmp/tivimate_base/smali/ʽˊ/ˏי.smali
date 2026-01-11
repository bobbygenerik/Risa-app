.class public final Lʽˊ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lʽˊ/ˏי;->ʾˋ:I

    iput-object p2, p0, Lʽˊ/ˏי;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10

    .prologue
    iget p1, p0, Lʽˊ/ˏי;->ʾˋ:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lʽˊ/ˏי;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lˉˆ/ˆﾞ;

    iget-object p4, p1, Lˉˆ/ˆﾞ;->ـﹶ:Lˉˆ/ˑٴ;

    invoke-virtual {p4, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    invoke-virtual {p4}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p5

    if-eqz p5, :cond_0

    iget-object p5, p1, Lˉˆ/ˆﾞ;->ᴵʼ:Lˉˆ/ᵎˊ;

    invoke-virtual {p5, p3}, Lˉˆ/ᵎˊ;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p4, p2, p3, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    invoke-virtual {p1}, Lˉˆ/ʿـ;->dismiss()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lʽˊ/ˏי;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lʽˊ/ʻٴ;

    iget-object v0, p1, Lʽˊ/ʻٴ;->ᴵᵔ:Lˉˆ/ʿـ;

    const/4 v1, 0x0

    if-gez p3, :cond_2

    iget-object v2, v0, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    invoke-static {p1, v2}, Lʽˊ/ʻٴ;->ﹳٴ(Lʽˊ/ʻٴ;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v4

    if-eqz v4, :cond_8

    if-eqz p2, :cond_4

    if-gez p3, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move-object v6, p2

    move v7, p3

    move-wide v8, p4

    goto :goto_6

    :cond_4
    :goto_2
    iget-object p1, v0, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_5

    move-object p2, v1

    goto :goto_3

    :cond_5
    iget-object p1, v0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    :goto_3
    iget-object p1, v0, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, -0x1

    :goto_4
    move p3, p1

    goto :goto_5

    :cond_6
    iget-object p1, v0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p1

    goto :goto_4

    :goto_5
    iget-object p1, v0, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_7

    const-wide/high16 p4, -0x8000000000000000L

    goto :goto_1

    :cond_7
    iget-object p1, v0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide p4

    goto :goto_1

    :goto_6
    iget-object v5, v0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    invoke-interface/range {v4 .. v9}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_8
    invoke-virtual {v0}, Lˉˆ/ʿـ;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
