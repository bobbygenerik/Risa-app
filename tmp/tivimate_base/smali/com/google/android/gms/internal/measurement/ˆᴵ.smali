.class public final Lcom/google/android/gms/internal/measurement/ˆᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ⁱʼ;


# static fields
.field public static final ʽ:Lcom/google/android/gms/internal/measurement/יˑ;

.field public static final ˈ:Lcom/google/android/gms/internal/measurement/יˑ;

.field public static final ˑﹳ:Lcom/google/android/gms/internal/measurement/יˑ;

.field public static final ᵎﹶ:Lcom/google/android/gms/internal/measurement/יˑ;

.field public static final ᵔᵢ:Lcom/google/android/gms/internal/measurement/יˑ;

.field public static final ⁱˊ:Lcom/google/android/gms/internal/measurement/יˑ;

.field public static final ﹳٴ:Lcom/google/android/gms/internal/measurement/יˑ;

.field public static final ﾞᴵ:Lcom/google/android/gms/internal/measurement/יˑ;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/measurement/יי;->ﹳٴ()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lar/tvplayer/core/domain/ʽﹳ;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, v2}, Lar/tvplayer/core/domain/ʽﹳ;-><init>(Landroid/net/Uri;ZZ)V

    const-string v0, "measurement.rb.attribution.ad_campaign_info"

    invoke-virtual {v1, v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.rb.attribution.service.bundle_on_backgrounded"

    invoke-virtual {v1, v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.rb.attribution.client2"

    invoke-virtual {v1, v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ˆᴵ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.rb.attribution.followup1.service"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ˆᴵ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.rb.attribution.client.get_trigger_uris_async"

    invoke-virtual {v1, v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.rb.attribution.service.trigger_uris_high_priority"

    invoke-virtual {v1, v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ˆᴵ;->ʽ:Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.rb.attribution.index_out_of_bounds_fix"

    invoke-virtual {v1, v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.rb.attribution.service.enable_max_trigger_uris_queried_at_once"

    invoke-virtual {v1, v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ˆᴵ;->ˈ:Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.rb.attribution.retry_disposition"

    invoke-virtual {v1, v0, v3}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ˆᴵ;->ˑﹳ:Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.rb.attribution.service"

    invoke-virtual {v1, v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ˆᴵ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.rb.attribution.enable_trigger_redaction"

    invoke-virtual {v1, v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ˆᴵ;->ᵎﹶ:Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.rb.attribution.uuid_generation"

    invoke-virtual {v1, v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ˆᴵ;->ᵔᵢ:Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.id.rb.attribution.retry_disposition"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v0, v3, v4}, Lar/tvplayer/core/domain/ʽﹳ;->ᵔʾ(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.rb.attribution.improved_retry"

    invoke-virtual {v1, v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    return-void
.end method
