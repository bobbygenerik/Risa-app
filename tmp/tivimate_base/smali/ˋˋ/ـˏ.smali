.class public final Lˋˋ/ـˏ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    iput p2, p0, Lˋˋ/ـˏ;->ʾˋ:I

    iput-object p1, p0, Lˋˋ/ـˏ;->ᴵˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    iget v0, p0, Lˋˋ/ـˏ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˋˋ/ـˏ;->ᴵˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ˑʼ:Lˋˋ/ᐧᴵ;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lˋˋ/ᐧᴵ;->ᵔᵢ()V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ـᵢ:Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lˋˋ/ـˏ;->ᴵˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ˈⁱ:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ـˏ:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    goto :goto_0

    :cond_2
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ʿ:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ˉـ:Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->ʼᐧ()V

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
