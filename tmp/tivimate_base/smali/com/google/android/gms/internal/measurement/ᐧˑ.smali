.class public final Lcom/google/android/gms/internal/measurement/ᐧˑ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ʼʿ;


# static fields
.field public static final ⁱˊ:Lcom/google/android/gms/internal/measurement/יˑ;

.field public static final ﹳٴ:Lcom/google/android/gms/internal/measurement/יˑ;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/measurement/יי;->ﹳٴ()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lar/tvplayer/core/domain/ʽﹳ;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, v2}, Lar/tvplayer/core/domain/ʽﹳ;-><init>(Landroid/net/Uri;ZZ)V

    const-string v0, "measurement.set_default_event_parameters_with_backfill.client.dev"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.set_default_event_parameters_with_backfill.service"

    invoke-virtual {v1, v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.id.set_default_event_parameters.fix_service_request_ordering"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v0, v4, v5}, Lar/tvplayer/core/domain/ʽﹳ;->ᵔʾ(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.set_default_event_parameters.fix_app_update_logging"

    invoke-virtual {v1, v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ᐧˑ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.set_default_event_parameters.fix_service_request_ordering"

    invoke-virtual {v1, v0, v3}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ᐧˑ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.set_default_event_parameters.fix_subsequent_launches"

    invoke-virtual {v1, v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    return-void
.end method
