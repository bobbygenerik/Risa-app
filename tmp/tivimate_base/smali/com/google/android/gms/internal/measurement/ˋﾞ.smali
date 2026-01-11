.class public final Lcom/google/android/gms/internal/measurement/ˋﾞ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ʼᵔ;


# static fields
.field public static final ﹳٴ:Lcom/google/android/gms/internal/measurement/יˑ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/יי;->ﹳٴ()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lar/tvplayer/core/domain/ʽﹳ;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, v2}, Lar/tvplayer/core/domain/ʽﹳ;-><init>(Landroid/net/Uri;ZZ)V

    const-string v0, "measurement.sdk.collection.enable_extend_user_property_size"

    invoke-virtual {v1, v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.sdk.collection.last_deep_link_referrer_campaign2"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ˋﾞ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.id.sdk.collection.last_deep_link_referrer2"

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lar/tvplayer/core/domain/ʽﹳ;->ᵔʾ(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/יˑ;

    return-void
.end method
