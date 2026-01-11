.class public final Lcom/google/android/gms/internal/measurement/ʾⁱ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/יᐧ;


# static fields
.field public static final ʽ:Lcom/google/android/gms/internal/measurement/יˑ;

.field public static final ˈ:Lcom/google/android/gms/internal/measurement/יˑ;

.field public static final ˑﹳ:Lcom/google/android/gms/internal/measurement/יˑ;

.field public static final ⁱˊ:Lcom/google/android/gms/internal/measurement/יˑ;

.field public static final ﹳٴ:Lcom/google/android/gms/internal/measurement/יˑ;

.field public static final ﾞᴵ:Lcom/google/android/gms/internal/measurement/יˑ;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/google/android/gms/internal/measurement/יי;->ﹳٴ()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lar/tvplayer/core/domain/ʽﹳ;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, v2}, Lar/tvplayer/core/domain/ʽﹳ;-><init>(Landroid/net/Uri;ZZ)V

    const-string v0, "measurement.test.boolean_flag"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ʾⁱ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.test.cached_long_flag"

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v0, v2, v3}, Lar/tvplayer/core/domain/ʽﹳ;->ᵔʾ(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/יˑ;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ʾⁱ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/יˑ;

    const-wide/high16 v4, -0x3ff8000000000000L    # -3.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/internal/measurement/יˑ;->ᵎﹶ:Ljava/lang/Object;

    new-instance v4, Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v5, "measurement.test.double_flag"

    const/4 v6, 0x2

    invoke-direct {v4, v1, v5, v0, v6}, Lcom/google/android/gms/internal/measurement/יˑ;-><init>(Lar/tvplayer/core/domain/ʽﹳ;Ljava/lang/String;Ljava/lang/Object;I)V

    sput-object v4, Lcom/google/android/gms/internal/measurement/ʾⁱ;->ʽ:Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.test.int_flag"

    const-wide/16 v4, -0x2

    invoke-virtual {v1, v0, v4, v5}, Lar/tvplayer/core/domain/ʽﹳ;->ᵔʾ(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/יˑ;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ʾⁱ;->ˈ:Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.test.long_flag"

    invoke-virtual {v1, v0, v2, v3}, Lar/tvplayer/core/domain/ʽﹳ;->ᵔʾ(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/יˑ;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ʾⁱ;->ˑﹳ:Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.test.string_flag"

    const-string v2, "---"

    invoke-virtual {v1, v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ʼᐧ(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/יˑ;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ʾⁱ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/יˑ;

    return-void
.end method
