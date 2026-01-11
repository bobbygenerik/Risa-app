.class public final synthetic Lـᵢ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lـᵢ/ᵔᵢ;


# direct methods
.method public synthetic constructor <init>(Lـᵢ/ᵔᵢ;I)V
    .locals 0

    iput p2, p0, Lـᵢ/ʽ;->ʾˋ:I

    iput-object p1, p0, Lـᵢ/ʽ;->ᴵˊ:Lـᵢ/ᵔᵢ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    iget v0, p0, Lـᵢ/ʽ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lـᵢ/ʽ;->ᴵˊ:Lـᵢ/ᵔᵢ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lـᵢ/ᵔᵢ;->ˈٴ(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lـᵢ/ʽ;->ᴵˊ:Lـᵢ/ᵔᵢ;

    invoke-virtual {v0}, Lـᵢ/ᵔᵢ;->ˊʻ()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
