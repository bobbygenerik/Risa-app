.class public final Lᵎˈ/ʻٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵎˈ/ᵔᵢ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lˊʼ/ˏי;


# direct methods
.method public synthetic constructor <init>(Lˊʼ/ˏי;I)V
    .locals 0

    iput p2, p0, Lᵎˈ/ʻٴ;->ʾˋ:I

    iput-object p1, p0, Lᵎˈ/ʻٴ;->ᴵˊ:Lˊʼ/ˏי;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 0

    .prologue
    iget p2, p0, Lᵎˈ/ʻٴ;->ʾˋ:I

    packed-switch p2, :pswitch_data_0

    iget-object p2, p0, Lᵎˈ/ʻٴ;->ᴵˊ:Lˊʼ/ˏי;

    iput-object p1, p2, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    new-instance p1, Lkotlinx/coroutines/flow/internal/AbortFlowException;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/internal/AbortFlowException;-><init>(Lᵎˈ/ᵔᵢ;)V

    throw p1

    :pswitch_0
    iget-object p2, p0, Lᵎˈ/ʻٴ;->ᴵˊ:Lˊʼ/ˏי;

    iput-object p1, p2, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    new-instance p1, Lkotlinx/coroutines/flow/internal/AbortFlowException;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/internal/AbortFlowException;-><init>(Lᵎˈ/ᵔᵢ;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
