.class public final synthetic Lﹶﾞ/ᴵˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹶﾞ/ʽﹳ;


# static fields
.field public static final synthetic ʽʽ:Lﹶﾞ/ᴵˊ;

.field public static final synthetic ᴵˊ:Lﹶﾞ/ᴵˊ;


# instance fields
.field public final synthetic ʾˋ:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lﹶﾞ/ᴵˊ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lﹶﾞ/ᴵˊ;-><init>(I)V

    sput-object v0, Lﹶﾞ/ᴵˊ;->ᴵˊ:Lﹶﾞ/ᴵˊ;

    new-instance v0, Lﹶﾞ/ᴵˊ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lﹶﾞ/ᴵˊ;-><init>(I)V

    sput-object v0, Lﹶﾞ/ᴵˊ;->ʽʽ:Lﹶﾞ/ᴵˊ;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lﹶﾞ/ᴵˊ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ()Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lﹶﾞ/ᴵˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˈʼ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ˈʼ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ˈʼ;->ʾˋ:Lˆʽ/ᵔʾ;

    iget-object v0, v0, Lˆʽ/ᵔʾ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˋᵎ;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ʿٴ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/יˑ;

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

    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵔˋ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ᵔˋ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ᵔˋ;->ﹳٴ()Lcom/google/android/gms/internal/measurement/ʻﾞ;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ʾʼ;->ٴﹳ:Lcom/google/android/gms/internal/measurement/יˑ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/יˑ;->ⁱˊ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
