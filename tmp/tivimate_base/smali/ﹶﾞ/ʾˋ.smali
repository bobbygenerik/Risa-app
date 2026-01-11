.class public final synthetic Lﹶﾞ/ʾˋ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹶﾞ/ʽﹳ;


# static fields
.field public static final synthetic ʽʽ:Lﹶﾞ/ʾˋ;

.field public static final synthetic ᴵˊ:Lﹶﾞ/ʾˋ;


# instance fields
.field public final synthetic ʾˋ:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lﹶﾞ/ʾˋ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lﹶﾞ/ʾˋ;-><init>(I)V

    sput-object v0, Lﹶﾞ/ʾˋ;->ᴵˊ:Lﹶﾞ/ʾˋ;

    new-instance v0, Lﹶﾞ/ʾˋ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lﹶﾞ/ʾˋ;-><init>(I)V

    sput-object v0, Lﹶﾞ/ʾˋ;->ʽʽ:Lﹶﾞ/ʾˋ;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lﹶﾞ/ʾˋ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ()Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lﹶﾞ/ʾˋ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/ⁱˆ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ⁱˆ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ⁱˆ;->ʾˋ:Lˆʽ/ᵔʾ;

    iget-object v0, v0, Lˆʽ/ᵔʾ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔﹶ;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˎˈ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/יˑ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/יˑ;->ⁱˊ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v1

    :pswitch_0
    sget-object v0, Lﹶﾞ/ᴵᵔ;->ﹳٴ:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˉˈ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ˉˈ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ˉˈ;->ʾˋ:Lˆʽ/ᵔʾ;

    iget-object v0, v0, Lˆʽ/ᵔʾ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ʾˑ;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ᴵﹶ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/יˑ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/יˑ;->ⁱˊ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
