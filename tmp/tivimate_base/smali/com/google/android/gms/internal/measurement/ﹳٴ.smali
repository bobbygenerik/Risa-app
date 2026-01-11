.class public final synthetic Lcom/google/android/gms/internal/measurement/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic ⁱˊ:Lcom/google/android/gms/internal/measurement/ᴵᵔ;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/ᴵᵔ;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/measurement/ﹳٴ;->ﹳٴ:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ﹳٴ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ᴵᵔ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/ˑˉ;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ﹳٴ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ᴵᵔ;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/ᴵᵔ;->ˈ:Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ˑˉ;-><init>(Lcom/google/android/gms/internal/measurement/ˏי;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ˑˉ;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ﹳٴ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ᴵᵔ;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/ᴵᵔ;->ʽ:Lᵢ/ﹳٴ;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ˑˉ;-><init>(Lᵢ/ﹳٴ;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
